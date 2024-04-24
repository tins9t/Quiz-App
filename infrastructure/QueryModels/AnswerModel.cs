namespace infrastructure.QueryModels;

public class Answer
{
    public int Id { get; set; }
    public int QuestionId { get; set; }
    public string? Text { get; set; }
    public bool Correct { get; set; }
}