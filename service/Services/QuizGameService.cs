using infrastructure.QueryModels;

namespace service;

public class QuizGameService(QuizService quizService)
{
    private String QuizHost = "";

    public void StartQuiz(String Username, int QuizRoomId,string quizId )
    {
        QuizHost = Username;

        Console.WriteLine("user: " + QuizHost + " is starting the quiz: " + quizId + " in room: " + QuizRoomId);
        Quiz quiz = quizService.GetQuizById(quizId);
        Console.WriteLine("Quiz name: " + quiz.Name);
        List<Question> questions = quizService.GetQuestionsByQuizId(quizId);
        // Fetch the questions for the quiz
        
        foreach (var question in questions)
        {
            Console.WriteLine(question.Text);
            List<Answer> answers = quizService.GetAnswersByQuestionId(question.Id);
            foreach (var answer in answers)
            {
                Console.WriteLine(answer.Text);
            }
        }
        // Fetch the answers for each question
        
        
        // Send question and answers to the frontend
        // wait for answers from the clients
        // Calculate the score
        // Send the score to the frontend
        // Repeat the process for all questions
        // Send the final score to the frontend
        // save quiz session to the database
        // End the quiz
        
        Console.WriteLine("Quiz has started.");
    }
}