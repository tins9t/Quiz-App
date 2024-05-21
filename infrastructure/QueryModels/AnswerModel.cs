using System.Text.Json.Serialization;

namespace infrastructure.QueryModels;

public class Answer
{
    [JsonPropertyName("id")]
    public int Id { get; set; }
    [JsonPropertyName("questionId")]
    public int QuestionId { get; set; }
    [JsonPropertyName("text")]
    public string? Text { get; set; }
    [JsonPropertyName("correct")]
    public bool Correct { get; set; }
}