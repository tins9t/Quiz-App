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

    public Question UpdateQuestion(Question question)
    {
        var sql = $@"UPDATE question SET text = @text WHERE id = @id RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Question>(sql, new
            {
                id = question.Id,
                text = question.Text
            });
        }
    }

    public bool DeleteQuestionById(int questionId)
    {
        var sql = $@"DELETE FROM question WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new {id = questionId}) == 1;
        }
    }
}