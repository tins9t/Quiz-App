using System.Text.Json.Serialization;

namespace infrastructure.QueryModels;

public class Question
{
    [JsonPropertyName("id")]
    public int Id { get; set; }
    [JsonPropertyName("quizId")]
    public string? QuizId { get; set; }
    [JsonPropertyName("text")]
    public string? Text { get; set; }
}