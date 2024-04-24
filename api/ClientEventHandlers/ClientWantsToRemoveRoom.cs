using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToRemoveRoomDto: BaseDto
{
    public int RoomId { get; set; }
}

public class ClientWantsToRemoveRoom() : BaseEventHandler<ClientWantsToLeaveRoomDto>
{
    public override Task Handle(ClientWantsToLeaveRoomDto dto, IWebSocketConnection socket)
    {
        throw new NotImplementedException();
    }
}