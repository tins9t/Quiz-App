using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service;

public class QuizService
{
    private readonly QuizRepository _quizRepository;
    private readonly QuestionService _questionService;

    public QuizService(QuizRepository quizRepository, QuestionService questionService)
    {
        _quizRepository = quizRepository;
        _questionService = questionService;
    }

    public Quiz CreateQuiz(Quiz quiz)
    {
        return _quizRepository.CreateQuiz(quiz);
    }

    public Quiz UpdateQuiz(Quiz quiz)
    {
        return _quizRepository.UpdateQuiz(quiz);
    }

    public bool DeleteQuizById(string quizId)
    {
        _questionService.DeleteQuestionsByQuizId(quizId);
        return _quizRepository.DeleteQuizById(quizId);
    }
    
    public Quiz GetQuizById(string id)
    {
        return _quizRepository.GetQuizById(id);
    }

    public void StartQuiz(string id)
    {
        Quiz quiz = GetQuizById(id);
        
        List<Question> questions = _quizRepository.GetQuestionsByQuizId(id);
        
        foreach (var question in questions)
        {
            Console.WriteLine(question.Text);
            List<Answer> answers = _quizRepository.GetAnswersByQuestionId(question.Id);
            foreach (var answer in answers)
            {
                Console.WriteLine(answer.Text);
            }
        }
    }

    public List<Quiz> GetNewestQuizzes()
    {
        return _quizRepository.GetNewestQuizzes();
    }
}