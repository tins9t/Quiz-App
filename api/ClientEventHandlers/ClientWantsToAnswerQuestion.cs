using System.Text.Json;
using api.State;
using Fleck;
using infrastructure.QueryModels;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToAnswerQuestionDto : BaseDto
{
    public string? Answer { get; set; }

    public string? Username { get; set; }

    public int RoomId { get; set; }
}

public class ClientWantsToAnswerQuestion : BaseEventHandler<ClientWantsToAnswerQuestionDto>
{
    private readonly StateService _stateService;

    public ClientWantsToAnswerQuestion( StateService stateService)
    {
        _stateService = stateService;
    }
    public override Task Handle(ClientWantsToAnswerQuestionDto dto, IWebSocketConnection socket)
    {
        socket.Send(JsonSerializer.Serialize(new ClientWantsToAnswerQuestionDto()
        {
            eventType = "ClientWantsToAnswerQuestion",
            Answer = dto.Answer,
            Username = _stateService.Connections[socket.ConnectionInfo.Id].Username
        }));

        // Get the room ID and the question from the context
        // You need to implement this part according to your application's logic

        Console.WriteLine(_stateService.Connections[socket.ConnectionInfo.Id].Username + " answered the question: " + dto.Answer + " in room: " + dto.RoomId);
        Answer answer = new Answer { Text = dto.Answer };
        // Get the current question for the room from the state service
        Question question = _stateService.GetCurrentQuestion(dto.RoomId);
        _stateService.AddAnswer(_stateService.Connections[socket.ConnectionInfo.Id].Username, dto.RoomId, question, answer);

        return Task.CompletedTask;
    }
}