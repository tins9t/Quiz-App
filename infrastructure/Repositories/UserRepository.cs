using Dapper;
using infrastructure.QueryModels;
namespace infrastructure.Repositories;

public class UserRepository
{
    public User CreateUser(User user)
    {
        var sql = $@"INSERT INTO user(id, username, email) VALUES (@id, @username, @email);";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<User>(sql, new
            {
                id = new Guid().ToString(),
                username = user.Username,
                email = user.Email
            });
        }
    }

    public User UpdateUser(User user)
    {
        var sql = $@"UPDATE user SET username = @username, email = @email WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<User>(sql, new
            {
                id = user.Id,
                username = user.Username,
                email = user.Email
            });
        }
    }

    public bool DeleteUserById(int userId)
    {
        var sql = $@"DELETE FROM user WHERE id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.Execute(sql, new { id = userId }) == 1;
        }
    }

    public bool DoesUsernameExist(string? username)
    {
        var sql = "SELECT count(*) from user where username = @Username;";

        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            var parameters = new { Username = username };
            return conn.ExecuteScalar<int>(sql, parameters) > 0;
        }
    }
    
    public bool DoesEmailExist(string? email)
    {
        var sql = "SELECT count(*) from user where email = @Email;";

        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            var parameters = new { Email = email };
            return conn.ExecuteScalar<int>(sql, parameters) > 0;
        }
    }

    public User GetUserById(int userId)
    {
        var sql = $@"SELECT * FROM user where id = @id;";
        using (var conn = DataConnection.DataSource.OpenConnection())
        {
            return conn.QueryFirst<User>(sql, new { id = userId });
        }
    }
}