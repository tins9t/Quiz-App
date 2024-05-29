using System.Collections.Concurrent;
using infrastructure.QueryModels;

namespace service.Services;

public class QuizManagerService
{
    public const int DelayTimeMilliseconds = 20000; // 20 seconds
    private readonly QuizService _quizService;
    private readonly QuestionService _questionService;
    private readonly AnswerService _answerService;
    private readonly ConcurrentDictionary<Question, List<Answer>> _quizData = new ConcurrentDictionary<Question, List<Answer>>();

    public event Action<int, Question, List<Answer>, int, int> QuestionAsked;
    public event Action<int> QuizStarted;
    public event Action<int, Dictionary<string, int>> ScoreCalculated;

    public delegate Task<Answer> GetUserInputCallback(Question question, List<Answer> answers);

    public QuizManagerService(QuizService quizService, QuestionService questionService, AnswerService answerService)
    {
        _quizService = quizService;
        _questionService = questionService;
        _answerService = answerService;
    }
    public async Task RunQuiz(int quizRoomId, string quizId, GetUserInputCallback getUserInput, ConcurrentDictionary<int, Dictionary<string, Dictionary<Question, Answer>>> userAnswersPerRoom)
    {
        Quiz quiz = _quizService.GetQuizById(quizId);
        List<Question> questions = _questionService.GetQuestionsByQuizId(quizId);
        Dictionary<Question, Answer> userAnswers = new Dictionary<Question, Answer>();

        QuizStarted?.Invoke(quizRoomId);
        await AskQuestions(questions, quizRoomId, userAnswers, getUserInput);
        CalculateScore(userAnswersPerRoom[quizRoomId], quizRoomId);
    }

    private async Task AskQuestions(IReadOnlyList<Question> questions, int quizRoomId, Dictionary<Question, Answer> userAnswers, GetUserInputCallback getUserInput)
    {
        for (int i = 0; i < questions.Count; i++)
        {
            Console.WriteLine("Asking question " + (i + 1) + " of " + questions.Count);
            Console.WriteLine("Question: " + questions[i].Text?.Trim());
            var question = questions[i];
            List<Answer> answers = _answerService.GetAnswersByQuestionId(question.Id);
            _quizData[question] = answers;
            int currentQuestionNumber = i + 1;
            int totalQuestions = questions.Count;
            Console.WriteLine("Total questions: " + totalQuestions);
            Console.WriteLine("Current question number: " + currentQuestionNumber);
            QuestionAsked?.Invoke(quizRoomId, question, answers, currentQuestionNumber , totalQuestions);

            Answer userAnswer = await getUserInput(question, answers);
            userAnswers[question] = userAnswer;

            await Task.Delay(DelayTimeMilliseconds);
        }
    }
    private void CalculateScore(Dictionary<string, Dictionary<Question, Answer>> allUserAnswers, int quizRoomId)
    {
        // Create a dictionary to store the scores for each user
        Dictionary<string, int> userScores = new Dictionary<string, int>();

        // Iterate over each user's answers
        foreach ((string? userId, var answers) in allUserAnswers)
        {
            Console.WriteLine("Calculating score for user " + userId);

            // Calculate the user's score
            int userScore = CalculateUserScore(answers);

            // Add the user's score to the dictionary
            userScores[userId] = userScore;

            // Print out the final score for the user
            Console.WriteLine("Final score for user " + userId + ": " + userScore);
            
        }

        // Convert the dictionary to a list and sort it in descending order based on the score
        var sortedScores = userScores.ToList();
        sortedScores.Sort((pair1, pair2) => pair2.Value.CompareTo(pair1.Value));

        // Print out the scores in sorted order
        foreach (var score in sortedScores)
        {
            Console.WriteLine("User: " + score.Key + ", Score: " + score.Value);
        }
        ScoreCalculated?.Invoke(quizRoomId, userScores);
    }

    private int CalculateUserScore(Dictionary<Question, Answer> userAnswers)
    {
        var userScore = 0;
        var winStreak = 0;

        // Iterate over each answer
        foreach (var (question, userAnswer) in userAnswers)
        {
            // Check if the question exists in the quiz data
            if (!_quizData.TryGetValue(question, out var correctAnswers))
            {
                continue;
            }
            // Check if the user's answer matches any of the correct answers
            var matchingAnswer = correctAnswers.FirstOrDefault(a => a.Id == userAnswer.Id);
            if (matchingAnswer is { Correct: true })
            {
                // If the user's answer is correct, increment the win streak
                winStreak++;

                // If the win streak is 3 or more, increase the score by 2X
                if (winStreak >= 3)
                {
                    userScore += 20; // 2X the score
                }
                else
                {
                    // If the win streak is less than 3, just increment the score by 10
                    userScore += 10;
                }
            }
            else
            {
                // If the user's answer is incorrect, reset the win streak
                winStreak = 0;
            }
        }

        return userScore;
    }
    
}