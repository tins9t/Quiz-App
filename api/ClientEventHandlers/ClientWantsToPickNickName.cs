using System.Text.Json;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToPickNickNameDto : BaseDto
{
    public string? username { get; set; }
}

public class ClientWantsToPickNickName: BaseEventHandler<ClientWantsToPickNickNameDto>
{
    private readonly StateService _stateService;
    
    public ClientWantsToPickNickName( StateService stateService)
    {
        _stateService = stateService;
    }

    public override Task Handle(ClientWantsToPickNickNameDto dto, IWebSocketConnection socket)
    {
        _stateService.Connections[socket.ConnectionInfo.Id].Username = dto.username;
        socket.Send(JsonSerializer.Serialize(new ServerResponseDto()
        {
            eventType = "ServerResponseConnectionChoseUsername",
            message = "Welcome   " + dto.username
        }));
        return Task.CompletedTask;
    }
}
public class ServerResponseDto : BaseDto
{
    public string eventType { get; set; }
    
    public string message { get; set; }
        
}