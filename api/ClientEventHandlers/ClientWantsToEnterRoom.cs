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
    public string Username { get; set; }
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
        var isSuccess = _stateService.AddToRoom(socket, dto.roomId, dto.Username);

        if (isSuccess)
        {
            socket.Send(JsonSerializer.Serialize(new ServerAddsClientToRoomDto()
            {
                eventType = "ServerAddsClientToRoom",
                message = dto.Username + " were successfully added to room with ID: " + dto.roomId
            }));
            Console.WriteLine("Client " + dto.Username + " added to room with ID: " + dto.roomId);
        }
        else
        {
            socket.Send(JsonSerializer.Serialize(new ServerAddsClientToRoomDto()
            {
                eventType = "ServerAddsClientToRoom",
                message = "Failed to add " + dto.Username + " to room with ID: " + dto.roomId + ". Username already exists in the room."
            }));
            Console.WriteLine("Failed to add client " + dto.Username + " to room with ID: " + dto.roomId + ". Username already exists in the room.");
        }

        return Task.CompletedTask;
    }
}

public class ServerAddsClientToRoomDto : BaseDto
{
    public string eventType { get; set; }
    
    public string message { get; set; }
        
}