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
    
    [Route("api/answer/update")]
    [HttpPut]
    public Answer UpdateAnswer([FromBody] Answer answer)
    {
        return _answerService.UpdateAnswer(answer);
    }
    
    [Route("api/answer/delete/{answerId}")]
    [HttpDelete]
    public bool DeleteAnswerById([FromRoute] int answerId)
    {
        return _answerService.DeleteAnswerById(answerId);
    }
    
    
}