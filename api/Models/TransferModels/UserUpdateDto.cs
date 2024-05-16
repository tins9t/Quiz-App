using System.ComponentModel.DataAnnotations;
using Recipe_Web_App.ValidationModels;

namespace api.Models.TransferModels;

public class UserUpdateDto
{
    [Required] [MinLength(4, ErrorMessage = "Username needs to be at least 4 characters.")] public string? Username { get; set; }
    [Required] [ValidationEmail] public string? Email { get; set; }
}