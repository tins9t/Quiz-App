namespace infrastructure.QueryModels;

public class Question
{
    public int Id { get; set; }
    public string? QuizId { get; set; }
    public string? Text { get; set; }
}