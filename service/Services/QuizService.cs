using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service;

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
        return _quizRepository.GetQuestionsByQuizId(id);
    }
    public List<Answer> GetAnswersByQuestionId(int id)
    {
        return _quizRepository.GetAnswersByQuestionId(id);
    }
}