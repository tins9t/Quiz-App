using api.ClientEventHandlers;
using infrastructure.QueryModels;
using service;

namespace api.State;
using Fleck;
using Timer = System.Timers.Timer;
public class WebSocketMetaData(IWebSocketConnection connection)
{
    public IWebSocketConnection Connection { get; set; } = connection;
    public string? Username { get; set; }
}
public class StateService { 
    public StateService(QuizManagerService quizManagerService)
    {
        _quizManagerService = quizManagerService;
        _quizManagerService.QuestionAsked += WaitForAnswers;

    }
    
    private readonly QuizManagerService _quizManagerService;
    public Dictionary<Guid, WebSocketMetaData> Connections { get; } = new();
    private Dictionary<int, HashSet<Guid>> Rooms { get; } = new();
    public Dictionary<int, Timer> SetupTimers { get; } = new Dictionary<int, Timer>();
    private Dictionary<int, Dictionary<string, Dictionary<Question, Answer>>> _userAnswersPerRoom = new();
    public event Action<string, int, string> QuizStarted;
    
    
    
    
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
    public void AddAnswer(string username, int room, Question question, Answer answer)
    {
        if (!_userAnswersPerRoom.ContainsKey(room))
        {
            _userAnswersPerRoom[room] = new Dictionary<string, Dictionary<Question, Answer>>();
        }

        if (!_userAnswersPerRoom[room].ContainsKey(username))
        {
            _userAnswersPerRoom[room][username] = new Dictionary<Question, Answer>();
        }

        _userAnswersPerRoom[room][username][question] = answer;
    }

    private void WaitForAnswers(int room, Question question)
    {
        Task.Run(() =>
        {
            Timer timer = new Timer(30000); // Set the time limit to 30 seconds
            TaskCompletionSource<bool> tcs = new TaskCompletionSource<bool>();

            timer.Elapsed += (sender, e) => tcs.TrySetResult(true);
            timer.Start();

            // This loop checks every second if all users have answered
            while (_userAnswersPerRoom[room].Count < Rooms[room].Count - 1) // Subtract 1 to exclude the host user
            {
                if (Task.WhenAny(Task.Delay(1000), tcs.Task).Result == tcs.Task)
                {
                    break; // The timer has run out
                }
            }

            timer.Stop();

            // Use _userAnswersPerRoom directly as it is already in the format expected by CalculateScore
            _quizManagerService.CalculateScore(_userAnswersPerRoom[room]);
        });
    }
    
    public void StartQuiz(string userName, int quizRoomId, string quizId)
    {
        QuizStarted?.Invoke(userName, quizRoomId, quizId);
        _quizManagerService.StartQuiz(userName, quizRoomId, quizId);
        
    }
    
    
    
    
   
}