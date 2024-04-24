using Dapper;
using infrastructure.QueryModels;

namespace infrastructure.Repositories;

public class PasswordHashRepository
{
    public void CreatePasswordHash(string userId, string password, string salt)
    {
        var sql = $@"INSERT INTO security(user_id, password_hash, salt) VALUES (@userId, @passwordHash, @salt)";
        using var conn = DataConnection.DataSource.OpenConnection();
        conn.Execute(sql, new { userId, password, salt });
    }
    
    public PasswordHash GetByEmail(string email)
    {
        const string sql = $@"
        SELECT 
        security.user_id as {nameof(PasswordHash.UserId)},
        security.password as {nameof(PasswordHash.Hash)},
        security.salt as {nameof(PasswordHash.Salt)}
        FROM security
        JOIN user ON security.user_id = user.id
        WHERE email = @email;";
        using var connection = DataConnection.DataSource.OpenConnection();
        return connection.QuerySingle<PasswordHash>(sql, new { email });
    }
}
