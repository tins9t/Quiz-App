using api.Models.TransferModels;
using api.TransferModels;
using infrastructure.QueryModels;
using Microsoft.AspNetCore.Mvc;
using service;

public class AccountController : ControllerBase
{
    private readonly UserService _userService;
    private readonly PasswordHashService _passwordHashService;

    public AccountController(UserService userService, PasswordHashService passwordHashService)
    {
        _userService = userService;
        _passwordHashService = passwordHashService;
    }
    
    [Route("api/login")]
    [HttpPost]
    public ResponseDto Login([FromBody] LoginDto dto)
    {
        var user = _passwordHashService.Authenticate(dto.Email, dto.Password);
        if (user == null)
            return new ResponseDto()
            {
                MessageToClient = "Invalid Credentials"
            };
        return new ResponseDto()
        {
            MessageToClient = "Successfully Authenticated"
        };
    }
    
    [Route("api/update/password/{userId}")]
    [HttpPut]
    public void UpdateCredentials([FromBody] PasswordUpdateDto dto, [FromRoute] string userId)
    {
        User user = _userService.GetUserById(userId);
        _passwordHashService.UpdateCredentials(user, dto.NewPassword, dto.Password);
    }
}