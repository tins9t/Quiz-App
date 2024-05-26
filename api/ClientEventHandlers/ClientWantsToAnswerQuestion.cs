using System.Text.Json;
using api.State;
using Fleck;
using infrastructure.QueryModels;
using lib;

namespace api.ClientEventHandlers;

public class ClientWantsToAnswerQuestionDto : BaseDto
{
    public int AnswerId { get; set; }

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
            AnswerId = dto.AnswerId,
            Username = _stateService.Connections[socket.ConnectionInfo.Id].Username
        }));

        // Get the room ID and the question from the context
        // You need to implement this part according to your application's logic

        Console.WriteLine(_stateService.Connections[socket.ConnectionInfo.Id].Username + " answered the question: with answer id " + dto.AnswerId + " in room: " + dto.RoomId);
        Answer answer = new Answer { Id = dto.AnswerId };
        // Get the current question for the room from the state service
        Question question = _stateService.GetCurrentQuestion(dto.RoomId);
        _stateService.AddAnswer(_stateService.Connections[socket.ConnectionInfo.Id].Username!, dto.RoomId, question, answer);

        return Task.CompletedTask;
    }
}