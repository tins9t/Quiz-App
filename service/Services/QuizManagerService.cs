using System.Collections.Concurrent;
using System.Timers;
using infrastructure.QueryModels;

namespace service;

public class QuizManagerService
{
    public const int DelayTimeMilliseconds = 30000; // 30 seconds
    private readonly QuizService _quizService;
    private readonly ConcurrentDictionary<Question, List<Answer>> _quizData = new ConcurrentDictionary<Question, List<Answer>>();

    public event Action<int, Question> QuestionAsked;
    public event Action<int> QuizStarted;

    public delegate Task<Answer> GetUserInputCallback(Question question, List<Answer> answers);

    public QuizManagerService(QuizService quizService)
    {
        _quizService = quizService;
    }


    public async Task RunQuiz(string username, int quizRoomId, string quizId, GetUserInputCallback getUserInput, ConcurrentDictionary<int, Dictionary<string, Dictionary<Question, Answer>>> userAnswersPerRoom)
    {
        Quiz quiz = _quizService.GetQuizById(quizId);
        List<Question> questions = _quizService.GetQuestionsByQuizId(quizId);
        Dictionary<Question, Answer> userAnswers = new Dictionary<Question, Answer>();

        QuizStarted?.Invoke(quizRoomId);
        await AskQuestions(questions, quizRoomId, userAnswers, getUserInput);
        CalculateScore(userAnswersPerRoom[quizRoomId]);
    }

    private async Task AskQuestions(List<Question> questions, int quizRoomId, Dictionary<Question, Answer> userAnswers, GetUserInputCallback getUserInput)
    {
        for (int i = 0; i < questions.Count; i++)
        {
            Console.WriteLine("Asking question " + (i + 1) + " of " + questions.Count);
            Console.WriteLine("Question: " + questions[i].Text);
            var question = questions[i];
            List<Answer> answers = _quizService.GetAnswersByQuestionId(question.Id);
            _quizData[question] = answers;

            QuestionAsked?.Invoke(quizRoomId, question);

            Answer userAnswer = await getUserInput(question, answers);
            userAnswers[question] = userAnswer;

            await Task.Delay(DelayTimeMilliseconds);
        }
    }
    public void CalculateScore(Dictionary<string, Dictionary<Question, Answer>> allUserAnswers)
    {
        // Iterate over each user's answers
        foreach (var userAnswers in allUserAnswers)
        {
            Console.WriteLine("Calculating score for user " + userAnswers.Key);
            var userId = userAnswers.Key;
            var answers = userAnswers.Value;

            // Calculate the user's score
            int userScore = CalculateUserScore(answers);

            // Print out the final score for the user
            Console.WriteLine("Final score for user " + userId + ": " + userScore);
        }
    }

    private int CalculateUserScore(Dictionary<Question, Answer> userAnswers)
    {
        int userScore = 0;

        // Iterate over each answer
        foreach (var answer in userAnswers)
        {
            var question = answer.Key;
            var userAnswer = answer.Value;

            // Check if the question exists in the quiz data
            if (_quizData.TryGetValue(question, out var correctAnswers))
            {
                // Check if the user's answer matches any of the correct answers
                var matchingAnswer = correctAnswers.FirstOrDefault(a => string.Equals(a.Text.Trim(), userAnswer.Text.Trim(), StringComparison.CurrentCultureIgnoreCase));
                if (matchingAnswer != null && matchingAnswer.Correct)
                {
                    // If the user's answer is correct, increment the user's score
                    userScore++;
                }
            }
        }

        return userScore;
    }
    
}