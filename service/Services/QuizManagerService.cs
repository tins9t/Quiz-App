using System.Timers;
using infrastructure.QueryModels;

namespace service;

public class QuizManagerService
{
    private readonly QuizService _quizService;
    private Dictionary<Question, List<Answer>> _quizData;
    public event Action<int, Question> QuestionAsked;
    
    public QuizManagerService(QuizService quizService)
    {
        _quizService = quizService;
        _quizData = new Dictionary<Question, List<Answer>>();
    }
    
    private String QuizHost = "";
    
   
    public void StartQuiz(String username, int quizRoomId,string quizId )
    {

        QuizHost = username;
        Console.WriteLine("user: " + QuizHost + " is starting the quiz: " + quizId + " in room: " + quizRoomId);
        Quiz quiz = _quizService.GetQuizById(quizId);
        Console.WriteLine("Quiz name: " + quiz.Name);
        List<Question> questions = _quizService.GetQuestionsByQuizId(quizId);
        Dictionary<string, Dictionary<Question, Answer>> allUserAnswers = new Dictionary<string, Dictionary<Question, Answer>>();
        
        
        CalculateScore(allUserAnswers);


        foreach (var question in questions)
        {
            List<Answer> answers = _quizService.GetAnswersByQuestionId(question.Id);
            _quizData[question] = answers; // Store the question and its answers in the dictionary
            
            // Raise the QuestionAsked event after each question
            // // Send question and answers to the frontend
            QuestionAsked?.Invoke(quizRoomId, question);
        }
            // Fetch the answers for each question
        // wait for answers from the clients
        
        
        // Repeat the process for all questions
        // Send the final score to the frontend
        // save quiz session to the database
        // End the quiz
        
        Console.WriteLine("Quiz has started.");
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
                var question = answer.Key;
                var userAnswer = answer.Value;

                // Check if the question exists in the quiz data
                if (_quizData.ContainsKey(question))
                {
                    // Check if the user's answer is correct
                    if (_quizData[question].Any(a => a.Id == userAnswer.Id && a.Correct))
                    {
                        userScore++;
                    }
                }
            }
            // Send the score to the frontend
            Console.WriteLine("Final score for user " + userId + ": " + userScore);
        }
    }
}