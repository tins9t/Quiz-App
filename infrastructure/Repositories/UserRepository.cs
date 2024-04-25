using Dapper;
using infrastructure.QueryModels;
namespace infrastructure.Repositories;

public class UserRepository
{
    public User CreateUser(User user)
    {
        var sql = $@"INSERT INTO users(id, username, email) VALUES (@id, @username, @email)
                 RETURNING *;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<User>(sql, new
            {
                id = Guid.NewGuid().ToString(),
                username = user.Username,
                email = user.Email
            });
        }
    }

    public User UpdateUser(User user)
    {
        var sql = $@"UPDATE users SET username = @username, email = @email WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            conn.Execute(sql, new
            {
                id = user.Id,
                username = user.Username,
                email = user.Email
            });
        }

        return user;
    }

    public bool DeleteUserById(string userId)
    {
        var sql = $@"DELETE FROM users WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = userId }) == 1;
        }
    }

    public bool DoesUsernameExist(string? username)
    {
        var sql = "SELECT count(*) from users where username = @Username;";

        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            var parameters = new { Username = username };
            return conn.ExecuteScalar<int>(sql, parameters) > 0;
        }
    }
    
    public bool DoesEmailExist(string? email)
    {
        var sql = "SELECT count(*) from users where email = @Email;";

        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            var parameters = new { Email = email };
            return conn.ExecuteScalar<int>(sql, parameters) > 0;
        }
    }

    public User GetUserById(string userId)
    {
        var sql = $@"SELECT * FROM users where id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<User>(sql, new { id = userId });
        }
    }
}