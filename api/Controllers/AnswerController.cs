using api.Models.TransferModels;
using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

namespace api.Controllers;



[ApiController]
public class AnswerController : ControllerBase
{
    private readonly AnswerService _answerService;

    public AnswerController(AnswerService answerService)
    {
        _answerService = answerService;
    }
    
    [Route("api/answer/create")]
    [HttpPost]
    public Answer CreateAnswer([FromBody] Answer answer)
    {
        return _answerService.CreateAnswer(answer);
    }
    
    [Route("api/answer/update/{answerId}")]
    [HttpPut]
    public Answer UpdateAnswer([FromBody] AnswerUpdateDto answer, [FromRoute] int answerId)
    {
        Answer updatedAnswer = new Answer()
        {
            Text = answer.Text, Correct = answer.Correct, Id = answerId
        };
        return _answerService.UpdateAnswer(updatedAnswer);
    }
    
    [Route("api/answer/delete/{answerId}")]
    [HttpDelete]
    public bool DeleteAnswerById([FromRoute] int answerId)
    {
        return _answerService.DeleteAnswerById(answerId);
    }
    
    [Route("api/answer/create/multiple")]
    [HttpPost]
    public List<Answer> CreateMultipleAnswers([FromBody] List<Answer> answers)
    {
        List<Answer> createdAnswers = new List<Answer>();
        foreach (var answer in answers)
        {
            createdAnswers.Add(_answerService.CreateAnswer(answer));
        }

        return createdAnswers;
    }
    
    
}