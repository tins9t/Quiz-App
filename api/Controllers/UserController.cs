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

    [Route("api/update/user/{userId}")]
    [HttpPut]
    public User UpdateUser([FromBody] User user, [FromRoute] string userId)
    {
        user.Id = userId;
        return _userService.UpdateUser(user);
    }
    
    [Route("api/update/password/{userId}")]
    [HttpPut]
    public void UpdateCredentials([FromBody] PasswordUpdateDto dto, [FromRoute] string userId)
    {
        User user = _userService.GetUserById(userId);
        _passwordHashService.UpdateCredentials(user, dto.NewPassword, dto.Password);
    }

    [Route("/api/delete/user/{userId}")]
    [HttpDelete]
    public bool DeleteUserById([FromRoute] string userId)
    {
        return _userService.DeleteUserById(userId);
    }
}