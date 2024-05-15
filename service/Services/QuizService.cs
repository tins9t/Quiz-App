using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service.Services;

public class QuizService
{
    private readonly QuizRepository _quizRepository;
    private readonly QuestionService _questionService;

    public QuizService(QuizRepository quizRepository, QuestionService questionService)
    {
        _quizRepository = quizRepository;
        _questionService = questionService;
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
    public List<Question> GetQuestionsByQuizId(string id)
    {
        
        List<Question> questions = _quizRepository.GetQuestionsByQuizId(id);
        
        foreach (var question in questions)
        {
            _quizRepository.GetAnswersByQuestionId(question.Id);
        }

        return _quizRepository.GetQuestionsByQuizId(id);
    }
    public List<Answer> GetAnswersByQuestionId(int id)
    {
        return _quizRepository.GetAnswersByQuestionId(id);

    }

    public List<Quiz> GetNewestQuizzes()
    {
        return _quizRepository.GetNewestQuizzes();
    }

    public List<Quiz> GetQuizzesByUser(string userId)
    {
        return _quizRepository.GetQuizzesByUser(userId);
    }
}