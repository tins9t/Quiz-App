using infrastructure.QueryModels;

namespace api.Models.TransferModels;

public class QuestionAndAnswersDto
{
    public Question Question { get; set; }
    public List<Answer> Answers { get; set; }
}

