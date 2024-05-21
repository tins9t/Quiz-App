using api.Models.TransferModels;
using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

namespace api.Controllers;


[ApiController]
public class QuestionController : ControllerBase
{
    private readonly QuestionService _questionService;
    private readonly AnswerService _answerService;

    public QuestionController(QuestionService questionService, AnswerService answerService)
    {
        _questionService = questionService;
        _answerService = answerService;
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

    [Route("api/question/createWithAnswers")]
    [HttpPost]
    public List<QuestionWithAnswers> CreateQuestionsWithAnswers([FromBody] List<QuestionWithAnswers> questionsWithAnswers)
    {
        List<QuestionWithAnswers> createdQuestionsWithAnswers = new List<QuestionWithAnswers>();

        foreach (var questionWithAnswers in questionsWithAnswers)
        {
            var createdQuestion = _questionService.CreateQuestion(questionWithAnswers.Question);

            foreach (var answer in questionWithAnswers.Answers)
            {
                answer.QuestionId = createdQuestion.Id;
                _answerService.CreateAnswer(answer);
            }

            createdQuestionsWithAnswers.Add(new QuestionWithAnswers
            {
                Question = createdQuestion,
                Answers = questionWithAnswers.Answers
            });
        }

        return createdQuestionsWithAnswers;
    }
}