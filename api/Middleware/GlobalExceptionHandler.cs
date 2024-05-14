using System.ComponentModel.DataAnnotations;
using System.Security.Authentication;
using System.Text.Json;
using Fleck;

namespace api.Middleware;

public class GlobalExceptionHandler
{
    private readonly ILogger<GlobalExceptionHandler> _logger;
    private readonly RequestDelegate _next;

    public GlobalExceptionHandler(
        ILogger<GlobalExceptionHandler> logger,
        RequestDelegate next)
    {
        _logger = logger;
        _next = next;
    }

    public async Task InvokeAsync(HttpContext http)
    {
        try
        {
            await _next.Invoke(http);
        }
        catch (Exception exception)
        {
            await HandleExceptionAsync(http, exception, _logger);
        }
    }

    private static Task HandleExceptionAsync(HttpContext http, Exception exception,
        ILogger<GlobalExceptionHandler> logger)
    {
        http.Response.ContentType = "application/json";
        logger.LogError(exception, "Exception: {ExceptionMessage}, StackTrace: {StackTrace}", exception.Message, exception.StackTrace);

        var statusCode = StatusCodes.Status500InternalServerError;
        var message = "Internal Server Error";

        if (exception is ValidationException ||
            exception is ArgumentException ||
            exception is ArgumentNullException ||
            exception is ArgumentOutOfRangeException ||
            exception is InvalidCredentialException)
        {
            statusCode = StatusCodes.Status400BadRequest;
            message = exception.Message;
        }
        else if (exception is KeyNotFoundException)
        {
            statusCode = StatusCodes.Status404NotFound;
            message = exception.Message;
        }
        else if (exception is AuthenticationException)
        {
            statusCode = StatusCodes.Status401Unauthorized;
            message = exception.Message;
        }
        else if (exception is UnauthorizedAccessException)
        {
            statusCode = StatusCodes.Status403Forbidden;
            message = exception.Message;
        }
        else if (exception is WebSocketException)
        {
            statusCode = StatusCodes.Status101SwitchingProtocols;
            message = exception.Message;
        }

        http.Response.StatusCode = statusCode;

        var response = new
        {
            message,
            statusCode,
            // Include the stack trace if in a development environment
            stackTrace = http.RequestServices.GetService<IWebHostEnvironment>().IsDevelopment() ? exception.StackTrace : null
        };

        var result = JsonSerializer.Serialize(response);
        return http.Response.WriteAsync(result);
    }
}