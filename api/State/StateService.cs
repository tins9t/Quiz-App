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
        _quizManagerService.QuestionAsked += async (room, question) => await WaitForAnswers(room, question);
        //In this code, an async lambda function is used as the event handler for QuestionAsked. This lambda function matches the event signature and calls WaitForAnswers inside it.
        _quizManagerService.QuizStarted += GetNumberOfConnectionsInRoom;

    }
    
    private readonly QuizManagerService _quizManagerService;
    public Dictionary<Guid, WebSocketMetaData> Connections { get; } = new();
    private Dictionary<int, HashSet<Guid>> Rooms { get; } = new();
    public Dictionary<int, Timer> SetupTimers { get; } = new Dictionary<int, Timer>();
    private Dictionary<int, Dictionary<string, Dictionary<Question, Answer>>> _userAnswersPerRoom = new();
    public delegate void ClientWantsToAnswerQuestionHandler(string Username, int room, Question question, Answer answer);
    public event ClientWantsToAnswerQuestionHandler ClientWantsToAnswerQuestion;
    
   
    
    public void GetNumberOfConnectionsInRoom(int room)
    {
        Console.WriteLine("Number of connections in room: " + room + " is " + Rooms[room].Count);
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
    public void AddAnswer(String Username, Int32 room, Question question, Answer answer)
    {
        if (Username == null)
        {
            throw new ArgumentNullException(nameof(Username), "Username cannot be null.");
        }
        if (!_userAnswersPerRoom.ContainsKey(room))
        {
            _userAnswersPerRoom[room] = new Dictionary<string, Dictionary<Question, Answer>>();
        }

        if (!_userAnswersPerRoom[room].ContainsKey(Username))
        {
            _userAnswersPerRoom[room][Username] = new Dictionary<Question, Answer>();
        }
        ClientWantsToAnswerQuestion?.Invoke(Username, room, question, answer);
        _userAnswersPerRoom[room][Username][question] = answer;
    }

    private async Task WaitForAnswers(int room, Question question)
    {
        await Task.Run(() =>
        {
            Timer timer = new Timer(QuizManagerService.DelayTime);
            TaskCompletionSource<bool> tcs = new TaskCompletionSource<bool>();

            timer.Elapsed += (sender, e) => tcs.TrySetResult(true);
            timer.Start();

            // Check if the room key exists in the dictionary, if not add it
            if (!_userAnswersPerRoom.ContainsKey(room))
            {
                _userAnswersPerRoom[room] = new Dictionary<string, Dictionary<Question, Answer>>();
            }

            // This loop checks every second if all users have answered
            while (_userAnswersPerRoom[room].Count != Rooms[room].Count - 1) // Check if all users have answered
            {
                if (Task.WhenAny(Task.Delay(1000), tcs.Task).Result == tcs.Task)
                {
                    break; // The timer has run out
                }
            }

            timer.Stop();

            // Print out the number of people who answered the question
            Console.WriteLine(_userAnswersPerRoom[room].Count + " people answered the question.");

            // Use _userAnswersPerRoom directly as it is already in the format expected by CalculateScore
            _quizManagerService.CalculateScore(_userAnswersPerRoom[room]);
        });
    }
    
    public void StartQuiz(string Username, int quizRoomId, string quizId)
    {
        
        _quizManagerService.RunQuiz(Username, quizRoomId, quizId, GetUserInput);
        
    }
    public async Task<Answer> GetUserInput(Question question, List<Answer> answers)
    {
        // This is just a placeholder implementation.
        // You need to replace this with your actual code to get the user's input.
        await Task.Delay(1000); // Simulate a delay

        // Return the first answer as the user's input.
        // In your actual code, you should get the user's input and find the corresponding answer.
        return answers[0];
    }
    
    
    
    
   
}