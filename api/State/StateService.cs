using System.Collections.Concurrent;
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
    public ConcurrentDictionary<Guid, WebSocketMetaData> Connections { get; } = new();
    private ConcurrentDictionary<int, HashSet<Guid>> Rooms { get; } = new();
    public ConcurrentDictionary<int, Timer> SetupTimers { get; } = new ConcurrentDictionary<int, Timer>();
    private readonly ConcurrentDictionary<int, Dictionary<string, Dictionary<Question, Answer>>> _userAnswersPerRoom = new();
    private readonly ConcurrentDictionary<int, Question> _currentQuestionsPerRoom = new();
      public delegate void ClientWantsToAnswerQuestionHandler(string Username, int room, Question question, Answer answer);
       public event ClientWantsToAnswerQuestionHandler ClientWantsToAnswerQuestion;
    
    public void GetNumberOfConnectionsInRoom(int room)
    {
        if (Rooms.TryGetValue(room, out var connections))
        {
            Console.WriteLine($"Number of connections in room: {room} is {connections.Count}");
        }
    }
    
    
    public bool AddConnection(IWebSocketConnection socket)
    {
        return Connections.TryAdd(socket.ConnectionInfo.Id, 
            new WebSocketMetaData(socket));
    }

    public bool AddToRoom(IWebSocketConnection socket, int room)
    {
        return AddConnectionToRoom(socket.ConnectionInfo.Id, room);
    }

    public bool CreateRoom(IWebSocketConnection socket, int room)
    {
        if(!Rooms.ContainsKey(room))
            Rooms.TryAdd(room, new HashSet<Guid>());

        return AddConnectionToRoom(socket.ConnectionInfo.Id, room);
    }
    private bool AddConnectionToRoom(Guid connectionId, int room)
    {
        return Rooms[room].Add(connectionId);
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
        {
            foreach (var guid in guids)
            {
                if (Connections.TryGetValue(guid, out var ws) && ws.Connection != dontSentToThis)
                {
                    ws.Connection.Send(message);
                }
            }
        }
    }
    
    public void AddAnswer(String Username, Int32 room, Question question, Answer answer)
    {
        if (Username == null)
        {
            throw new ArgumentNullException(nameof(Username), "Username cannot be null.");
        }

        if (!_userAnswersPerRoom.TryGetValue(room, out var roomAnswers))
        {
            roomAnswers = new Dictionary<string, Dictionary<Question, Answer>>();
            _userAnswersPerRoom[room] = roomAnswers;
        }

        if (!roomAnswers.TryGetValue(Username, out var userAnswers))
        {
            userAnswers = new Dictionary<Question, Answer>();
            roomAnswers[Username] = userAnswers;
        }

        ClientWantsToAnswerQuestion?.Invoke(Username, room, question, answer);
        userAnswers[question] = answer;
    }

    private async Task WaitForAnswers(int room, Question question)
    {
        // Update the current question for the room
        SetCurrentQuestion(room, question);
        Timer timer = new Timer(QuizManagerService.DelayTimeMilliseconds);
        TaskCompletionSource<bool> tcs = new TaskCompletionSource<bool>();

        timer.Elapsed += (sender, e) => tcs.TrySetResult(true);
        timer.Start();

        // Check if the room key exists in the dictionary, if not add it
        if (!_userAnswersPerRoom.TryGetValue(room, out var roomAnswers))
        {
            roomAnswers = new Dictionary<string, Dictionary<Question, Answer>>();
            _userAnswersPerRoom[room] = roomAnswers;
        }

        // This loop checks every second if all users have answered
        while (roomAnswers.Count != Rooms[room].Count - 1) // Check if all users have answered
        {
            if (await Task.WhenAny(Task.Delay(1000), tcs.Task) == tcs.Task)
            {
                break; // The timer has run out
            }
        }

        timer.Stop();

        // Print out the number of people who answered the question
        Console.WriteLine($"{roomAnswers.Count} people answered the question.");
    }
    
    public void StartQuiz(string Username, int quizRoomId, string quizId)
    {
        _quizManagerService.RunQuiz(Username, quizRoomId, quizId, GetUserInput, _userAnswersPerRoom);
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
    
    public void SetCurrentQuestion(int roomId, Question question)
    {
        if (_currentQuestionsPerRoom.ContainsKey(roomId))
        {
            _currentQuestionsPerRoom[roomId] = question;
        }
        else
        {
            _currentQuestionsPerRoom.TryAdd(roomId, question);
        }
    }

    public Question GetCurrentQuestion(int roomId)
    {
        if (_currentQuestionsPerRoom.TryGetValue(roomId, out var currentQuestion))
        {
            return currentQuestion;
        }
        else
        {
            throw new Exception("No current question for room " + roomId);
        }
    }
}