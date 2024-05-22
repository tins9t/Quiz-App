using infrastructure.QueryModels;
using lib;

namespace api.Models.ServerEvents;

public class ServerMessage
{
    public class ServerResponse : BaseDto
    {
        public string eventType { get; set; }
        public string message { get; set; }
    }
    
    public class ServerSetCurrentQuestion : BaseDto
    {
        public string eventType { get; set; }
        public Question question { get; set; }
        public List<Answer> answers { get; set; }
    }
    
    public class ServerTimeRemaining : BaseDto
    {
        public string eventType { get; set; }
        public int timeRemaining { get; set; }
        
    }
    
    public class ServerShowScore : BaseDto
    {
        public string eventType { get; set; }
        public Dictionary<string, int> scores { get; set; }
    }
    public class ServerTellsHowManyPeopleAnswered : BaseDto
    {
        public string eventType { get; set; }
        public int peopleAnswered { get; set; }
    }
    
}