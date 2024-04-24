using lib;

namespace api.Models.ServerEvents;

public class ServerMessage
{
    public class ServerResponse : BaseDto
    {
        public string message { get; set; }
        public string eventType { get; set; }
    }
    
    
}