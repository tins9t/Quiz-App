using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service.Services;

public class QuizService
{
    private readonly QuizRepository _quizRepository;
    private readonly QuestionService _questionService;
    private readonly AnswerService _answerService;

    public QuizService(QuizRepository quizRepository, QuestionService questionService, AnswerService answerService)
    {
        _quizRepository = quizRepository;
        _questionService = questionService;
        _answerService = answerService;
    }

    public Quiz CreateQuiz(Quiz quiz)
    {
        return _quizRepository.CreateQuiz(quiz);
    }

    public Quiz UpdateQuiz(Quiz quiz)
    {
        return _quizRepository.UpdateQuiz(quiz);
    }

    public bool DeleteQuizById(string quizId)
    {
        _questionService.DeleteQuestionsByQuizId(quizId);
        return _quizRepository.DeleteQuizById(quizId);
    }
    
    public Quiz GetQuizById(string id)
    {
        return _quizRepository.GetQuizById(id);
    }

    public List<Quiz> GetNewestQuizzes()
    {
        return _quizRepository.GetNewestQuizzes();
    }

    public List<Quiz> GetQuizzesByUser(string userId)
    {
        return _quizRepository.GetQuizzesByUser(userId);
    }

    public List<Quiz> GetQuizzesByName(string name)
    {
        return _quizRepository.GetQuizzesByName(name);
    }
    
    public List<QuestionWithAnswers> GetQuestionsWithAnswersByQuizId(string quizId)
    {
        var questions = _questionService.GetQuestionsByQuizId(quizId);
        var questionsWithAnswers = new List<QuestionWithAnswers>();

        foreach (var question in questions)
        {
            var answers = _answerService.GetAnswersByQuestionId(question.Id);
            var questionWithAnswers = new QuestionWithAnswers
            {
                Question = question,
                Answers = answers
            };
            questionsWithAnswers.Add(questionWithAnswers);
        }
        
        return questionsWithAnswers;
    }
}