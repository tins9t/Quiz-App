using Fleck;
using lib;
using System.Text.Json;
using api.State;

namespace api.ClientEventHandlers;

// This class is responsible for handling the event when a client wants to leave a room/quiz

public class ClientWantsToLeaveRoomDto: BaseDto
{
    public int RoomId { get; set; }
}

public class ClientWantsToLeaveRoom() : BaseEventHandler<ClientWantsToLeaveRoomDto>
{
    public override Task Handle(ClientWantsToLeaveRoomDto dto, IWebSocketConnection socket)
    {
        StateService.RemoveFromRoom(socket, dto.RoomId);
        socket.Send(JsonSerializer.Serialize(new ServerRemovesUserFromRoomDto()
        {
            eventType = "ServerRemovesClientFromRoom",
            roomId = dto.RoomId
        }));
        
        
        return Task.CompletedTask;
    }
    
}
public class ServerRemovesUserFromRoomDto : BaseDto
{
    public string eventType { get; set; }
    public int roomId { get; set; }

}