using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

namespace api.Controllers;

[ApiController]
public class QuizController : ControllerBase
{
    private readonly QuizService _quizService;
    
    public QuizController(QuizService quizService)
    {
        _quizService = quizService;
    }
    
    [Route("api/quiz/create")]
    [HttpPost]
    public Quiz CreateQuiz([FromBody] Quiz quiz)
    {
        return _quizService.CreateQuiz(quiz);
    }
    
    [Route("api/quiz/{quizId}")]
    [HttpGet]
    public Quiz GetQuizById([FromRoute] string quizId)
    {
        return _quizService.GetQuizById(quizId);
    }
    
    [Route("api/quiz/update")]
    [HttpPut]
    public Quiz UpdateQuiz([FromBody] Quiz quiz)
    {
        return _quizService.UpdateQuiz(quiz);
    }
    
    [Route("api/quiz/delete/{quizId}")]
    [HttpDelete]
    public bool DeleteQuizById([FromRoute] string quizId)
    {
        return _quizService.DeleteQuizById(quizId);
    }

}

