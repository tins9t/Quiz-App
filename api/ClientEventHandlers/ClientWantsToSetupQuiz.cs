using System.Text.Json;
using api.State;
using Dapper;
using Fleck;
using lib;
using service;
using Timer = System.Timers.Timer;

namespace api.ClientEventHandlers;

public class ClientWantsToSetupQuizDto : BaseDto
{
    public string? Username { get; set; }
    
    public string? QuizId { get; set; }
    public int QuizRoomId { get; set; }
    
    public int SetupTimer { get; set; }
    
    
}

public class ClientWantsToSetupQuiz : BaseEventHandler<ClientWantsToSetupQuizDto>
{
    private readonly StateService _stateService;
    
    public ClientWantsToSetupQuiz( StateService stateService)
    {
        _stateService = stateService;
    }
    

    public override Task Handle(ClientWantsToSetupQuizDto dto, IWebSocketConnection socket)
    {
        _stateService.CreateRoom(socket, dto.QuizRoomId);
        _stateService.Connections[socket.ConnectionInfo.Id].Username = dto.Username;

        // If SetupTimer is not zero, start the setup phase timer
        if (dto.SetupTimer > 0)
        {
            var timer = new Timer(dto.SetupTimer * 1000);
            timer.Elapsed += (sender, e) =>
            {
                timer.Stop(); // Stop the timer when it expires
                timer?.Dispose(); // Dispose the timer
                Console.WriteLine("timer finished for quiz room: " + dto.QuizRoomId);
                _stateService.StartQuiz(dto.Username, dto.QuizRoomId, dto.QuizId);
            };

            timer.Start(); // Start the timer
            _stateService.SetupTimers[dto.QuizRoomId] = timer;
        }

        return Task.CompletedTask;
    }
    
    
}
