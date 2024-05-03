using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class AnswerRepository
{
    public Answer CreateAnswer(Answer answer)
    {
        var sql = $@"INSERT INTO answer(question_id, text, correct) VALUES (@question_id, @text, @correct) RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Answer>(sql, new
            {
                question_id = answer.QuestionId,
                text = answer.Text,
                correct = answer.Correct
            });
        }
    }

    public Answer UpdateAnswer(Answer answer)
    {
        var sql = $@"UPDATE answer SET text = @text, correct = @correct WHERE id = @id RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Answer>(sql, new
            {
                id = answer.Id,
                text = answer.Text,
                correct = answer.Correct
            });
        }
    }

    public bool DeleteAnswerById(int answerId)
    {
        var sql = $@"DELETE FROM answer WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = answerId }) == 1;
        }
    }
    
    public bool DeleteAnswersByQuestionId(int questionId)
    {
        var sql = $@"DELETE FROM answer WHERE question_id = @questionId;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { questionId }) > 0;
        }
    }
    
    public bool DeleteAnswersByQuizId(string quizId)
    {
        var sql = $@"DELETE FROM answer WHERE question_id IN (SELECT id FROM question WHERE quiz_id = @quizId);";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { quizId }) > 0;
        }
    }
}