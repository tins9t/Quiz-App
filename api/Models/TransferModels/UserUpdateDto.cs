using System.ComponentModel.DataAnnotations;
using Recipe_Web_App.ValidationModels;

namespace api.Models.TransferModels;

public class UserUpdateDto
{
    [Required] [MinLength(4, ErrorMessage = "Username needs to be at least 4 characters.")] [ValidationUsernameExist] public string? Username { get; set; }
    [Required] [ValidationEmail] [ValidationEmailExist] public string? Email { get; set; }
}