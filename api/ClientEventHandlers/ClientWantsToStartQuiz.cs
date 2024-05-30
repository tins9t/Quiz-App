using api.State;
using Fleck;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToStartQuizDto: BaseDto
{
    public string? Username { get; set; }
    public string? QuizId { get; set; }
    public int roomId { get; set; }
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
            if (_stateService.SetupTimers.TryGetValue(dto.roomId, out var timer))
            {
                Console.WriteLine("Timer found for quiz room: " + dto.roomId);
                timer.Stop(); // Stop the timer

                // Change the timer interval to 3 seconds
                timer.Interval = 3000;

                timer.Start(); // Start the timer again
                Console.WriteLine("Timer interval changed and started for quiz room: " + dto.roomId);
            }
            else
            {
                Console.WriteLine("No timer found for quiz room: " + dto.roomId);
                _stateService.StartQuiz(dto.roomId, dto.QuizId);
            }
        }
        catch (Exception e)
        {
            Console.WriteLine("Exception in Handle method of ClientWantsToStartQuiz: " + e.Message);
        }

        return Task.CompletedTask;
    }
}