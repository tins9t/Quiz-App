using api.ClientEventHandlers;
using service;

namespace api.State;
using Fleck;
using Timer = System.Timers.Timer;
public class WebSocketMetaData(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public string? Username { get; set; }
    
    
}

public class StateService
{
    public Dictionary<Guid, WebSocketMetaData> Connections { get; } = new();
    public Dictionary<int, HashSet<Guid>> Rooms { get; } = new();

    private readonly QuizGameService _quizGameService;
    public Dictionary<int, Timer> SetupTimers { get; } = new Dictionary<int, Timer>();

    public StateService(QuizGameService quizGameService)
    {
        _quizGameService = quizGameService;
    }
    
    public bool AddConnection(IWebSocketConnection socket)
    {
        return Connections.TryAdd(socket.ConnectionInfo.Id, 
            new WebSocketMetaData(socket));
    }

    public bool AddToRoom(IWebSocketConnection socket, int room)
    {
        Rooms[room].Add(socket.ConnectionInfo.Id);
        Console.WriteLine("joined room:  " + room);
        return Rooms[room].Add(socket.ConnectionInfo.Id);
    }
    public bool CreateRoom(IWebSocketConnection socket, int room)
    {
        if(!Rooms.ContainsKey(room))
            Rooms.Add(room, new HashSet<Guid>());
        
        Rooms[room].Add(socket.ConnectionInfo.Id);
        return Rooms[room].Add(socket.ConnectionInfo.Id);
    }
    
    public bool RemoveFromRoom(IWebSocketConnection socket, int room)
    {
        if(Rooms.TryGetValue(room, out var guids))
        {
            guids.Remove(socket.ConnectionInfo.Id);
            return true;
        }
        return false;
        
    }
    public bool KickAllUsersFromRoom(int room)
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
    
    public void BroadcastToRoom(int room, string message, IWebSocketConnection? dontSentToThis = null)
    {
        if (Rooms.TryGetValue(room, out var guids))
            foreach (var guid in guids)
            {
                if (Connections.TryGetValue(guid, out var ws) && ws != null && ws.Connection != dontSentToThis)
                    ws.Connection.Send(message);
            }
    }
    
    public void StartQuiz(string UserName, int QuizRoomId, string QuizId)
    {
        _quizGameService.StartQuiz(UserName, QuizRoomId, QuizId); // Start the quiz
    }
}