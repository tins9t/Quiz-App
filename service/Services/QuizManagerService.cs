using System.Timers;
using infrastructure.QueryModels;

namespace service;

public class QuizManagerService
{
    private readonly QuizService _quizService;

    private readonly Dictionary<Question, List<Answer>> _quizData;

    public event Action<int, Question> QuestionAsked;

    public event Action<int> QuizStarted;

    public delegate Task<Answer> GetUserInputCallback(Question question, List<Answer> answers);

    public const int DelayTime = 30000; // 30 seconds

    public QuizManagerService(QuizService quizService)
    {
        _quizService = quizService;
        _quizData = new Dictionary<Question, List<Answer>>();
    }

    private String QuizHost = "";


    public async Task RunQuiz(String username, int quizRoomId, string quizId, GetUserInputCallback getUserInput, Dictionary<int, Dictionary<string, Dictionary<Question, Answer>>> userAnswersPerRoom)
    {
        QuizHost = username;
        Console.WriteLine("Quiz has started running " + quizId + " " + quizRoomId + " " + username);
        Quiz quiz = _quizService.GetQuizById(quizId);

        List<Question> questions = _quizService.GetQuestionsByQuizId(quizId);

        Dictionary<Question, Answer> userAnswers = new Dictionary<Question, Answer>();
        QuizStarted?.Invoke(quizRoomId);
        await AskQuestion(questions, 0, quizRoomId, userAnswers, getUserInput);

        // Call CalculateScore after all questions have been asked
        CalculateScore(userAnswersPerRoom[quizRoomId]);
    }

    private async Task AskQuestion(List<Question> questions, int currentIndex, int quizRoomId, Dictionary<Question, Answer> userAnswers, GetUserInputCallback getUserInput)
    {
        if (currentIndex < questions.Count)
        {
            Console.WriteLine("Asking question " + currentIndex + " out of " + questions.Count + " " + questions[currentIndex].Text);
            var question = questions[currentIndex];
            List<Answer> answers = _quizService.GetAnswersByQuestionId(question.Id);
            _quizData[question] = answers; // Store the question and its answers in the dictionary
            Console.WriteLine("Answers: " + string.Join(", ", answers.Select(a => a.Text)));

            // Raise the QuestionAsked event after each question
            // Send question and answers to the frontend
            QuestionAsked?.Invoke(quizRoomId, question);

            // Wait for user input
            Answer userAnswer = await getUserInput(question, answers);

            // Store the user's answer
            userAnswers[question] = userAnswer;

            // Wait for 30 seconds before moving to the next question
            await Task.Delay(DelayTime);

            await AskQuestion(questions, currentIndex + 1, quizRoomId, userAnswers, getUserInput);
        }
        else
        {
            Console.WriteLine("All questions have been asked.");
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
            int userScore = 0;

            // Iterate over each answer
            foreach (var answer in answers)
            {
                var question = answer.Key;
                var userAnswer = answer.Value;

                // Check if the question exists in the quiz data
                if (_quizData.TryGetValue(question, out var correctAnswers))
                {
                    Console.WriteLine("Checking answer for question " + question.Text);
                    Console.WriteLine(correctAnswers.FirstOrDefault(a => a.Correct).Text);
                    Console.WriteLine(userAnswer.Text);
                    Console.WriteLine(string.Equals(correctAnswers.FirstOrDefault(a => a.Correct).Text.Trim(), userAnswer.Text.Trim(), StringComparison.CurrentCultureIgnoreCase));
                    // Check if the user's answer matches any of the correct answers
                    var matchingAnswer = correctAnswers.FirstOrDefault(a => string.Equals(a.Text.Trim(), userAnswer.Text.Trim(), StringComparison.CurrentCultureIgnoreCase));
                    if (matchingAnswer != null && matchingAnswer.Correct)
                    {
                        // If the user's answer is correct, increment the user's score
                        userScore++;
                        Console.WriteLine("User " + userId + " answered question " + question.Text + " correctly.");
                    }
                }
            }

            // Print out the final score for the user
            Console.WriteLine("Final score for user " + userId + ": " + userScore);
        }
    }
    
}