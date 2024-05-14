using System.Text.Json;
using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

// This class is responsible for handling the event when a client wants to kick all users from a room

public class ClientWantsToRemoveRoomDto: BaseDto
{
    public int RoomId { get; set; }
}

public class ClientWantsToKickAllUsers() : BaseEventHandler<ClientWantsToRemoveRoomDto>
{
    
    private readonly StateService _stateService;
    
    public ClientWantsToKickAllUsers(StateService stateService): this()
    {
        _stateService = stateService;
    }
    public override Task Handle(ClientWantsToRemoveRoomDto dto, IWebSocketConnection socket)
    {
        _stateService.KickAllUsersFromRoom(dto.RoomId);
        socket.Send(JsonSerializer.Serialize(new ServerRemovesAllUserFromRoomDto()
        {
            eventType = "ServerRemovesClientFromRoom",
            roomId = dto.RoomId,
            message = "All users from room with ID: " + dto.RoomId + " were successfully removed."
        }));
        
        
        return Task.CompletedTask;
    }
}
public class ServerRemovesAllUserFromRoomDto : BaseDto
{
    public string eventType { get; set; }
    public int roomId { get; set; }
    public string message { get; set; }

}