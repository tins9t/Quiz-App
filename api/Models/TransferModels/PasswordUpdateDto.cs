using System.ComponentModel.DataAnnotations;
using Recipe_Web_App.ValidationModels;

namespace api.Models.TransferModels;

public class PasswordUpdateDto
{
    [Required] [MinLength(8, ErrorMessage = "Password needs to be at least 8 characters.")] [ValidationPasswordNumber] [ValidationPasswordSpecialCharacter] public string? NewPassword { get; set; }
    [Required] [ValidationPasswordNumber] [ValidationPasswordSpecialCharacter] public string? Password { get; set; } 
}