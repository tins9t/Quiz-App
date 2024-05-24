using System.Text.Json;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToKickUserFromRoomDto : BaseDto
{
    public int RoomId { get; set; }
    public string username { get; set; }
    
    
}

public class ClientWantsToKickUserFromRoom : BaseEventHandler<ClientWantsToKickUserFromRoomDto>
{
    private readonly StateService _stateService;

    public ClientWantsToKickUserFromRoom(StateService stateService)
    {
        _stateService = stateService;
    }

    public override Task Handle(ClientWantsToKickUserFromRoomDto dto, IWebSocketConnection socket)
    {
        _stateService.KickUserFromRoom(dto.RoomId, dto.username);
        socket.Send(JsonSerializer.Serialize(new ServerRemovesUserFromRoomDto()
        {
            eventType = "ServerRemovesClientFromRoom",
            roomId = dto.RoomId,
            username = dto.username,
            message = "User " + dto.username + " from room with ID: " + dto.RoomId + " was successfully removed."
        }));

        return Task.CompletedTask;
    }
}

public class ServerRemovesUserFromRoomDto : BaseDto
{
    public string eventType { get; set; }
    public int roomId { get; set; }
    public string username { get; set; }
    public string message { get; set; }
}
