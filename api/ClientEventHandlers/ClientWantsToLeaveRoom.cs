using Fleck;
using lib;
using System.Text.Json;
using api.State;


namespace api.ClientEventHandlers;

public class ClientWantsToLeaveRoomDto: BaseDto
{
    public int RoomId { get; set; }
}

public class ClientWantsToLeaveRoom() : BaseEventHandler<ClientWantsToLeaveRoomDto>
{
    public override Task Handle(ClientWantsToLeaveRoomDto dto, IWebSocketConnection socket)
    {
        socket.Send(JsonSerializer.Serialize(new ServerRemovesUserFromRoomDto()
        {
            eventType = "ServerRemovesClientFromRoom",
            roomId = dto.RoomId
        }));
        StateService.RemoveFromRoom(socket, dto.RoomId);
        
        return Task.CompletedTask;
    }
    
}
public class ServerRemovesUserFromRoomDto : BaseDto
{
    public string eventType { get; set; }
    public int roomId { get; set; }
        
}