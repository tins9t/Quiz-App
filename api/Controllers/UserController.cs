using api.Filters;
using api.Models.TransferModels;
using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

namespace api.Controllers;

[ApiController]
public class UserController : ControllerBase
{
    private readonly UserService _userService;
    private readonly PasswordHashService _passwordHashService;
    private readonly JwtTokenService _jwtTokenService;

    public UserController(UserService userService, PasswordHashService passwordHashService, JwtTokenService jwtTokenService)
    {
        _userService = userService;
        _passwordHashService = passwordHashService;
        _jwtTokenService = jwtTokenService;
    }

    [Route("api/create/user")]
    [HttpPost]
    public User CreateUser([FromBody] RegisterDto dto)
    {
        User createdUser = new User()
        {
            Username = dto.Username,
            Email = dto.Email
        };

        var user = _userService.CreateUser(createdUser);
        _passwordHashService.Register(user, dto.Password);

        return user;
    }

    [Route("api/update/user/{userId}")]
    [HttpPut]
    public User UpdateUser([FromBody] UserUpdateDto dto, [FromRoute] string userId)
    {
        User updatedUser = new User()
        {
            Username = dto.Username,
            Email = dto.Email
        };
        return _userService.UpdateUser(updatedUser);
    }

    [Route("/api/delete/user/{userId}")]
    [HttpDelete]
    public bool DeleteUserById([FromRoute] string userId)
    {
        _passwordHashService.DeletePasswordHash(userId);
        return _userService.DeleteUserById(userId);
    }
    
    [Route("api/login")]
    [HttpPost]
    public IActionResult Login([FromBody] LoginDto dto)
    {
        var user = _passwordHashService.Authenticate(dto.Email, dto.Password);
        if (user == null)
        {
            return Unauthorized("Invalid credentials");
        }
        else
        {
            var token = _jwtTokenService.IssueToken(SessionData.FromUser(user!));
            return Ok(new { token });
        }
    }

    [Route("api/users/get/by/{userId}")]
    [HttpGet]
    public User GetUserById([FromRoute] string userId)
    {
        return _userService.GetUserById(userId);
    }

    [RequireAuthentication]
    [HttpGet]
    [Route("/api/users/whoami")]
    public User WhoAmI()
    {
        var data = HttpContext.GetSessionData();
        Console.WriteLine(data);
        var user = _userService.GetUserById(data.UserId);
        return user;
    }
    
    [Route("api/update/password/{userId}")]
    [HttpPut]
    public void UpdateCredentials([FromBody] PasswordUpdateDto dto, [FromRoute] string userId)
    {
        User user = _userService.GetUserById(userId);
        _passwordHashService.UpdateCredentials(user, dto.NewPassword, dto.Password);
    }
}