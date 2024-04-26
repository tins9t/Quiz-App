using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

namespace api.Controllers;


[ApiController]
public class QuestionController : ControllerBase
{
    private readonly QuestionService _questionService;
    
    public QuestionController(QuestionService questionService)
    {
        _questionService = questionService;
    }
    
    [Route("api/question/create")]
    [HttpPost]
    public Question CreateQuestion([FromBody] Question question)
    {
        return _questionService.CreateQuestion(question);
    }
    
    [Route("api/question/{questionId}")]
    [HttpDelete]
    public bool DeleteQuestionById([FromRoute] int questionId)
    {
        return _questionService.DeleteQuestionById(questionId);
    }
    
    [Route("api/question/update")]
    [HttpPut]
    public Question UpdateQuestion([FromBody] Question question)
    {
        return _questionService.UpdateQuestion(question);
    }
    

}