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
    public int roomId { get; set; }
    
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
        _stateService.CreateRoom(socket, dto.roomId);
        Console.WriteLine("room created for quiz room: " + dto.roomId);
        _stateService.Connections[socket.ConnectionInfo.Id].Username = dto.Username;

        // If SetupTimer is not zero, start the setup phase timer
        if (dto.SetupTimer > 0)
        {
            var timer = new Timer(dto.SetupTimer * 1000);
            Console.WriteLine("timer created for quiz room: " + dto.roomId);
            timer.Elapsed += (sender, e) =>
            {
                timer.Stop(); // Stop the timer when it expires
                timer?.Dispose(); // Dispose the timer
                Console.WriteLine("timer finished for quiz room: " + dto.roomId);
                _stateService.StartQuiz(dto.roomId, dto.QuizId);
            };

            timer.Start(); // Start the timer
            _stateService.SetupTimers[dto.roomId] = timer;
        }

        return Task.CompletedTask;
    }
    
    
}
