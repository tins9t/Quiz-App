using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class QuestionRepository
{
    public Question CreateQuestion(Question question)
    {
        var sql = $@"INSERT INTO question(quiz_id, text) VALUES (@quizId, @text) RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Question>(sql, new
            {
                quizId = question.QuizId,
                text = question.Text
            });
        }
    }
    
    
    public bool DeleteQuestionsByQuizId(string quizId)
    {
        var sql = $@"DELETE FROM question WHERE quiz_id = @quizId;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new {quizId}) > 0;
        }
    }
    
    public List<Question> GetQuestionsByQuizId(string quizId)
    {
        var sql = $@"SELECT id, quiz_id as {nameof(Question.QuizId)}, text FROM question WHERE quiz_id = @quiz_id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Question>(sql, new { quiz_id = quizId }).ToList();
        }
    }
}