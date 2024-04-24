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

    public UserController(UserService userService, PasswordHashService passwordHashService)
    {
        _userService = userService;
        _passwordHashService = passwordHashService;
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
}