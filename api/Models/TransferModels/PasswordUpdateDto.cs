using System.ComponentModel.DataAnnotations;

namespace api.Models.TransferModels;

public class PasswordUpdateDto
{
    [Required] [MinLength(8, ErrorMessage = "Password needs to be at least 8 characters.")] public string? NewPassword { get; set; }
    [Required] public string? Password { get; set; } 
}