using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service;

public class AnswerService
{
    private readonly AnswerRepository _answerRepository;

    public AnswerService(AnswerRepository answerRepository)
    {
        _answerRepository = answerRepository;
    }

    public Answer CreateAnswer(Answer answer)
    {
        return _answerRepository.CreateAnswer(answer);
    }

    public Answer UpdateAnswer(Answer answer)
    {
        return _answerRepository.UpdateAnswer(answer);
    }

    public bool DeleteAnswerById(int answerId)
    {
        return _answerRepository.DeleteAnswerById(answerId);
    }
}