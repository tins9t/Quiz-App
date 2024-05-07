using System.ComponentModel.DataAnnotations;
using Recipe_Web_App.ValidationModels;

namespace api.Models.TransferModels;

public class RegisterDto
{
    [Required] [MinLength(4, ErrorMessage = "Username needs to be at least 4 characters.")] [ValidationUsernameSpecialCharacters] public string? Username { get; set; }
    [Required] [ValidationEmail] public string? Email { get; set; }
    [Required] [MinLength(8, ErrorMessage = "Password needs to be at least 8 characters.")] [ValidationPasswordNumber] [ValidationPasswordSpecialCharacter] public string? Password { get; set; }
}