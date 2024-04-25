namespace infrastructure.QueryModels;

public class PasswordHash
{
    public string? UserId { get; set; }
    public required string Hash { get; set; }
    public required string Salt { get; set; }
}