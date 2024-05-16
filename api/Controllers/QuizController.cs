using api.Models.TransferModels;
using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;
using service.Services;

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
    public Quiz CreateQuiz([FromBody] QuizDto dto)
    {
        Quiz createdQuiz = new Quiz()
        {
            Name = dto.Name, Description = dto.Description, UserId = dto.UserId
        };
        return _quizService.CreateQuiz(createdQuiz);
    }
    
    [Route("api/quiz/{quizId}")]
    [HttpGet]
    public Quiz GetQuizById([FromRoute] string quizId)
    {
        return _quizService.GetQuizById(quizId);
    }
    
    [Route("api/quiz/update/{quizId}")]
    [HttpPut]
    public Quiz UpdateQuiz([FromBody] QuizUpdateDto dto, [FromRoute] string quizId)
    {
        Quiz updatedQuiz = new Quiz()
        {
            Name = dto.Name, Description = dto.Description, IsPrivate = dto.IsPrivate, Id = quizId
        };
        return _quizService.UpdateQuiz(updatedQuiz);
    }
    
    [Route("api/quiz/delete/{quizId}")]
    [HttpDelete]
    public bool DeleteQuizById([FromRoute] string quizId)
    {
        return _quizService.DeleteQuizById(quizId);
    }
    
    [Route("api/quiz/start/{quizId}")]
    [HttpGet]
    public void StartQuiz([FromRoute] string quizId)
    {
       // _quizService.StartQuiz(quizId);
    }

    [Route("api/quiz/get/newest")]
    [HttpGet]
    public List<Quiz> GetNewestQuizzes()
    {
        return _quizService.GetNewestQuizzes();
    }

    [Route("api/quiz/get/user/{userId}")]
    [HttpGet]
    public List<Quiz> GetQuizzesByUser([FromRoute] string userId)
    {
        return _quizService.GetQuizzesByUser(userId);
    }
    
    [Route("api/quiz/get/by/{name}")]
    [HttpGet]
    public List<Quiz> GetQuizzesByName([FromRoute] string name)
    {
        return _quizService.GetQuizzesByName(name);
    }
}

