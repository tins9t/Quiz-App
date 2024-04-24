using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class QuizRepository
{
    public Quiz CreateQuiz(Quiz quiz)
    {
        var sql = $@"INSERT INTO quiz(id, name, description, time_created, user_id, private) 
        VALUES (@id, @name, @description, @time_created, @user_id, @privacy);";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Quiz>(sql, new
            {
                id = new Guid().ToString(),
                name = quiz.Name,
                description = quiz.Description,
                time_created = DateTime.Today,
                user_id = quiz.UserId,
                privacy = quiz.Private
            });
        }
    }

    public Quiz UpdateQuiz(Quiz quiz)
    {
        var sql = $@"UPDATE quiz SET name = @name, description = @description, time_created = @time_created,
                user_id = @user_id, private = @privacy WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Quiz>(sql, new
            {
                name = quiz.Name,
                description = quiz.Description,
                time_created = quiz.TimeCreated,
                user_id = quiz.UserId,
                privacy = quiz.Private,
                id = quiz.Id
            });
        }
    }

    public bool DeleteQuizById(string quizId)
    {
        var sql = $@"DELETE FROM quiz WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = quizId }) == 1;
        }
    }
}