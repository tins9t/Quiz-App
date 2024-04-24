using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToRemoveRoomDto: BaseDto
{
    public int RoomId { get; set; }
}

public class ClientWantsToKickAllUsers() : BaseEventHandler<ClientWantsToLeaveRoomDto>
{
    public override Task Handle(ClientWantsToLeaveRoomDto dto, IWebSocketConnection socket)
    {
        throw new NotImplementedException();
    }
}