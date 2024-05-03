namespace api.Models.TransferModels;

public class QuizUpdateDto
{
        public string? Name { get; set; }
        public string? Description { get; set; }
        public bool IsPrivate { get; set; }
}