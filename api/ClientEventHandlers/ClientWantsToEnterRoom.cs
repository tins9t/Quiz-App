using Fleck;
using lib;
using System.Text.Json;
using api.Models.ServerEvents;
using api.State;

namespace api.ClientEventHandlers;

// This class is responsible for handling the event when a client wants to enter a room, this is the same as a user wants to create/join a quiz

public class ClientWantsToEnterRoomDto : BaseDto
{
    public int RoomId { get; set; }
}
public class ClientWantsToEnterRoom() : BaseEventHandler<ClientWantsToEnterRoomDto>
{

    public override Task Handle(ClientWantsToEnterRoomDto dto, IWebSocketConnection socket)
    {
        StateService.AddToRoom(socket, dto.RoomId);
        socket.Send(JsonSerializer.Serialize(new ServerAddsClientToRoomDto()
        {
            eventType = "ServerAddsClientToRoom",
            roomId = dto.RoomId
        }));
        
        return Task.CompletedTask;
    }
}

public class ServerAddsClientToRoomDto : BaseDto
{
    public string eventType { get; set; }
    public int roomId { get; set; }
        
}