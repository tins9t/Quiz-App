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
    
    public bool DeleteAnswersByQuestionId(int questionId)
    {
        return _answerRepository.DeleteAnswersByQuestionId(questionId);
    }
    
    public bool DeleteAnswersByQuizId(string quizId)
    {
        return _answerRepository.DeleteAnswersByQuizId(quizId);
    }
    
    public List<Answer> GetAnswersByQuestionId(int id)
    {
        return _answerRepository.GetAnswerByQuestionId(id);

    }
}