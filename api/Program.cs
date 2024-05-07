using System.Reflection;
using api;
using api.Middleware;
using api.State;
using Fleck;
using infrastructure.Repositories;
using lib;
using service;

var app = await ApiStartUp.StartApi();
app.UseSwagger();
app.UseSwaggerUI();
app.MapControllers();

app.UseCors(options =>
{
    options.SetIsOriginAllowed(origin => true)
        .AllowAnyMethod()
        .AllowAnyHeader()
        .AllowCredentials();
});

app.Run();
public static class ApiStartUp
{
    public static async Task <WebApplication> StartApi()
    {
        var builder = WebApplication.CreateBuilder();
        builder.Services.AddSingleton<QuestionRepository>();
        builder.Services.AddSingleton<QuestionService>();
        
        builder.Services.AddSingleton<AnswerRepository>();
        builder.Services.AddSingleton<AnswerService>();
        
        builder.Services.AddSingleton<PasswordHashRepository>();
        builder.Services.AddSingleton<PasswordHashService>();
        
        builder.Services.AddSingleton<UserRepository>();
        builder.Services.AddSingleton<UserService>();
        
        builder.Services.AddSingleton<QuizRepository>();
        builder.Services.AddSingleton<QuizService>();
        
        builder.Services.AddSingleton<PasswordHashAlgorithm, Argon2IdPasswordHashAlgorithm>();

        var clientEventHandlers = builder.FindAndInjectClientEventHandlers(Assembly.GetExecutingAssembly());

        builder.Services.AddControllers();
        builder.Services.AddEndpointsApiExplorer();
        builder.Services.AddSwaggerGen();
        
        builder.Services.AddJwtHelper();
        
        var app = builder.Build();

        app.UseMiddleware<JwtBearerHandler>();
        
        var server = new WebSocketServer("ws://0.0.0.0:8181");
        server.Start(socket =>
        {
            socket.OnOpen = async () =>
            {
                StateService.AddConnection(socket);
                Console.WriteLine("Open!");
                Connections.allSockets.Add(socket);
                

                try
                {
                    
                }
                catch (Exception e)
                {
                    Console.WriteLine(e.Message);
                    Console.WriteLine(e.InnerException);
                    Console.WriteLine(e.StackTrace);
                }

            };
            socket.OnClose = () =>
            {
                Console.WriteLine("Close!");
                Connections.allSockets.Remove(socket);
            };
            socket.OnMessage = async message =>
            {
                Console.WriteLine();
                Console.WriteLine(message);
                Console.WriteLine();
                try
                {
                    await app.InvokeClientEventHandler(clientEventHandlers, socket, message);

                }
                catch (Exception e)
                {

                    Console.WriteLine(e.Message);
                    Console.WriteLine(e.InnerException);
                    Console.WriteLine(e.StackTrace);
                    // Write exception here
                }
            };
        });
        return app;
    }
}