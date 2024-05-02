using api.Models.TransferModels;
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
    
    [Route("api/question/update/{questionId}")]
    [HttpPut]
    public Question UpdateQuestion([FromBody] QuestionUpdateDto question, [FromRoute] int questionId)
    {
        Question updatedQuestion = new Question()
        {
            Text = question.Text, Id = questionId
        };
        return _questionService.UpdateQuestion(updatedQuestion);
    }
    
    [Route("api/question/create/multiple")]
    [HttpPost]
    public List<Question> CreateMultipleQuestions([FromBody] List<Question> questions)
    {
        List<Question> createdQuestions = new List<Question>();
        foreach (var question in questions)
        {
            createdQuestions.Add(_questionService.CreateQuestion(question));
        }

        return createdQuestions;
    }
    

}