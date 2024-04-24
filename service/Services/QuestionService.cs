using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service;

public class QuestionService
{
    private readonly QuestionRepository _questionRepository;

    public QuestionService(QuestionRepository questionRepository)
    {
        _questionRepository = questionRepository;
    }

    public Question CreateQuestion(Question question)
    {
        return _questionRepository.CreateQuestion(question);
    }

    public Question UpdateQuestion(Question question)
    {
        return _questionRepository.UpdateQuestion(question);
    }

    public bool DeleteQuestionById(int questionId)
    {
        return _questionRepository.DeleteQuestionById(questionId);
    }
}