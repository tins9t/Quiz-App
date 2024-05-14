namespace api.State;
using Fleck;

public class WebSocketMetaData(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public string? Username { get; set; }
}

public static class StateService
{
    public static readonly Dictionary<Guid, WebSocketMetaData> Connections = new();

    private static readonly Dictionary<int, HashSet<Guid>> Rooms = new();

    public static bool AddConnection(IWebSocketConnection socket)
    {
        return Connections.TryAdd(socket.ConnectionInfo.Id, 
            new WebSocketMetaData(socket));
    }

    public static bool AddToRoom(IWebSocketConnection socket, int room)
    {
        if(!Rooms.ContainsKey(room)){
            Rooms.Add(room, new HashSet<Guid>());
            Console.WriteLine("created to room " + room);
            
        }
        Console.WriteLine("joined room:  " + room);
            
        Rooms[room].Add(socket.ConnectionInfo.Id);
        return Rooms[room].Add(socket.ConnectionInfo.Id);
    }
    public static bool RemoveFromRoom(IWebSocketConnection socket, int room)
    {
        if(!Rooms.ContainsKey(room))
            Rooms.Add(room, new HashSet<Guid>());
        return Rooms[room].Add(socket.ConnectionInfo.Id);
        
    }
    public static bool KickAllUsersFromRoom(int room)
    {
        if(Rooms.TryGetValue(room, out var guids))
        {
            foreach (var guid in guids)
            {
                if (Connections.TryGetValue(guid, out var ws))
                    ws.Connection.Send("You have been kicked from the room");
            }
            guids.Clear();
            return true;
        }
        return false;
    }
}