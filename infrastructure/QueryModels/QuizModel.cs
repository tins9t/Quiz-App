namespace infrastructure.QueryModels;

public class Quiz
{
    public string? Id { get; set; }
    public string? Name { get; set; }
    public string? Description { get; set; }
    public string? TimeCreated { get; set; }
    public string? UserId { get; set; }
    public bool IsPrivate { get; set; }
}