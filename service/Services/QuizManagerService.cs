using System.Timers;
using infrastructure.QueryModels;

namespace service;

public class QuizManagerService
{
    private readonly QuizService _quizService;

    private Dictionary<Question, List<Answer>> _quizData;

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


    public async Task RunQuiz(String username, int quizRoomId, string quizId, GetUserInputCallback getUserInput)
    {
        QuizHost = username;
        Console.WriteLine("Quiz has started running " + quizId + " " + quizRoomId + " " + username);
        Quiz quiz = _quizService.GetQuizById(quizId);

        List<Question> questions = _quizService.GetQuestionsByQuizId(quizId);

        Dictionary<Question, Answer> userAnswers = new Dictionary<Question, Answer>();
        QuizStarted?.Invoke(quizRoomId);
        await AskQuestion(questions, 0, quizRoomId, userAnswers, getUserInput);
    }

    private async Task AskQuestion(List<Question> questions, int currentIndex, int quizRoomId, Dictionary<Question, Answer> userAnswers, GetUserInputCallback getUserInput)
    {
        if (currentIndex < questions.Count)
        {
            Console.WriteLine("Asking question " + currentIndex + " out of " + questions.Count + " " + questions[currentIndex].Text);
            var question = questions[currentIndex];
            List<Answer> answers = _quizService.GetAnswersByQuestionId(question.Id);
            _quizData[question] = answers; // Store the question and its answers in the dictionary

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
        // Calculate the score
        foreach (var userAnswers in allUserAnswers)
        {
            var userId = userAnswers.Key;
            var answers = userAnswers.Value;
            int userScore = 0;

            foreach (var answer in answers)
            {
                Console.WriteLine("Calculating score for user " + userId);
                Console.WriteLine("Question: " + answer.Key.Text);
                Console.WriteLine("User's answer: " + answer.Value.Text);
                var question = answer.Key;
                var userAnswer = answer.Value;

                // Check if the question exists in the quiz data
                if (_quizData.ContainsKey(question))
                {
                    // Log the correct answers for the question
                    Console.WriteLine("Correct answers for question: " + string.Join(", ", _quizData[question].Where(a => a.Correct).Select(a => a.Text)));

                    // Check if the user's answer is correct
                    if (_quizData[question].Any(a => a.Id == userAnswer.Id && a.Correct))
                    {
                        userScore++;
                    }
                }
                else
                {
                    // Log if the question is not in the quiz data
                    Console.WriteLine("Question not found in quiz data: " + question.Text);
                }
            }
            // Send the score to the frontend
            Console.WriteLine("Final score for user " + userId + ": " + userScore);
        }
    }
}