using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class QuizRepository
{
    public Quiz CreateQuiz(Quiz quiz)
    {
        var sql = $@"INSERT INTO quiz(id, name, description, time_created, user_id, is_private)
        VALUES (@id, @name, @description, @time_created, @user_id, @is_private) RETURNING 
        id as {nameof(Quiz.Id)},
        name as {nameof(Quiz.Name)},
        description as {nameof(Quiz.Description)},
        time_created as {nameof(Quiz.TimeCreated)},
        user_id as {nameof(Quiz.UserId)},
        is_private as {nameof(Quiz.IsPrivate)};";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Quiz>(sql, new
            {
                id = Guid.NewGuid().ToString(),
                name = quiz.Name,
                description = quiz.Description,
                time_created = DateTime.Today,
                user_id = quiz.UserId,
                is_private = quiz.IsPrivate 
            });
        }
    }

    public Quiz UpdateQuiz(Quiz quiz)
    {
        DateTime.TryParse(quiz.TimeCreated, out DateTime parsedDate);
        var sql = $@"UPDATE quiz SET
    {nameof(Quiz.Name)} = @name,
    {nameof(Quiz.Description)} = @description,
    is_private = @is_private
    WHERE {nameof(Quiz.Id)} = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            conn.Execute(sql, new
            {
                name = quiz.Name,
                description = quiz.Description,
                time_created = parsedDate.Date,
                user_id = quiz.UserId,
                is_private = quiz.IsPrivate,
                id = quiz.Id
            });
        }
        return GetQuizById(quiz.Id);
    }

    public bool DeleteQuizById(string quizId)
    {
        var sql = $@"DELETE FROM quiz WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = quizId }) == 1;
        }
    }

    public Quiz GetQuizById(string id)
    {
        var sql = $@"SELECT id as {nameof(Quiz.Id)},
        name as {nameof(Quiz.Name)},
        description as {nameof(Quiz.Description)},
        time_created as {nameof(Quiz.TimeCreated)},
        user_id as {nameof(Quiz.UserId)},
        is_private as {nameof(Quiz.IsPrivate)} FROM quiz WHERE id = @id;"; 
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<Quiz>(sql, new { id });
        }
    }

    public List<Quiz> GetNewestQuizzes()
    {
        var sql = $@"SELECT * FROM quiz ORDER BY time_created DESC;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Quiz>(sql).ToList();
        }
    }

    public List<Quiz> GetQuizzesByUser(string userId)
    {
        var sql = $@"SELECT * FROM quiz WHERE user_id = @user_id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Quiz>(sql, new { user_id = userId }).ToList();
        }
    }

    public List<Quiz> GetQuizzesByName(string name)
    {
        var sql = $@"SELECT * FROM quiz WHERE name ILIKE @name;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Query<Quiz>(sql, new { name = $"%{name}%" }).ToList();
        }
    }
}