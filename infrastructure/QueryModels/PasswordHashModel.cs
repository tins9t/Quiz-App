namespace infrastructure.QueryModels;

public class PasswordHash
{
    public int UserId { get; set; }
    public required string Hash { get; set; }
    public required string Salt { get; set; }
}