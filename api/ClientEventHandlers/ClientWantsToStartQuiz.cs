using api.State;
using Fleck;
using lib;
using service;

namespace api.ClientEventHandlers;

public class ClientWantsToStartQuizDto: BaseDto
{
    public string? Username { get; set; }
    public string? QuizId { get; set; }
    public int QuizRoomId { get; set; }
}

public class ClientWantsToStartQuiz : BaseEventHandler<ClientWantsToStartQuizDto>
{
    private readonly StateService _stateService;
    
    public ClientWantsToStartQuiz( StateService stateService)
    {
        _stateService = stateService;
    }

    public override Task Handle(ClientWantsToStartQuizDto dto, IWebSocketConnection socket)
    {
        Console.WriteLine("Handle method of ClientWantsToStartQuiz is called.");
        try
        {
            if (_stateService.SetupTimers.TryGetValue(dto.QuizRoomId, out var timer))
            {
                timer?.Stop(); // Stop the timer if it's running
                timer?.Dispose(); // Dispose the timer
            }
            
            _stateService.StartQuiz(dto.Username, dto.QuizRoomId, dto.QuizId);
            Console.WriteLine("Quiz has started.");
        }
        catch (Exception e)
        {
            Console.WriteLine("Exception in Handle method of ClientWantsToStartQuiz: " + e.Message);
        }

        return Task.CompletedTask;
    }
}