using System.Text.Json;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToAnswerQuestionDto : BaseDto
{
    public string? Answer { get; set; }
    
    public string? Username { get; set; }
}

public class ClientWantsToAnswerQuestion : BaseEventHandler<ClientWantsToAnswerQuestionDto>
{
    private readonly StateService _stateService;
    
    public ClientWantsToAnswerQuestion( StateService stateService)
    {
        _stateService = stateService;
    }
    public override Task Handle(ClientWantsToAnswerQuestionDto dto, IWebSocketConnection socket)
    {
        socket.Send(JsonSerializer.Serialize(new ClientWantsToAnswerQuestionDto()
        {
            eventType = "ClientWantsToAnswerQuestion",
            Answer = dto.Answer,
            Username = _stateService.Connections[socket.ConnectionInfo.Id].Username
        }));
        return Task.CompletedTask;
    }
}