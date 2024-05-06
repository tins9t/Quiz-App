using Fleck;
using lib;
using System.Text.Json;
using api.Models.ServerEvents;
using api.State;

namespace api.ClientEventHandlers;

// This class is responsible for handling the event when a client wants to enter a room, this is the same as a user wants to create/join a quiz

public class ClientWantsToEnterRoomDto : BaseDto
{
    public int roomId { get; set; }
}
public class ClientWantsToEnterRoom() : BaseEventHandler<ClientWantsToEnterRoomDto>
{
    private readonly StateService _stateService;

    public ClientWantsToEnterRoom(StateService stateService) : this()
    {
        _stateService = stateService;
    }

    public override Task Handle(ClientWantsToEnterRoomDto dto, IWebSocketConnection socket)
    {
        var isSuccess = _stateService.AddToRoom(socket, dto.roomId);
        socket.Send(JsonSerializer.Serialize(new ServerAddsClientToRoomDto()
        {
            eventType = "ServerAddsClientToRoom",
            message = "You were successfully added to room with ID: " + dto.roomId
        }));
        
        return Task.CompletedTask;
    }
}

public class ServerAddsClientToRoomDto : BaseDto
{
    public string eventType { get; set; }
    
    public string message { get; set; }
        
}