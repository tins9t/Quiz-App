using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class AnswerRepository
{
    public Answer CreateAnswer(Answer answer)
    {
        var sql = $@"INSERT INTO answer(question_id, text, correct) VALUES (@question_id, @text, @correct);";
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
        var sql = $@"UPDATE answer SET text = @text, correct = @correct WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Answer>(sql, new
            {
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
}