using System.ComponentModel.DataAnnotations;
using service;

namespace Recipe_Web_App.ValidationModels;

public class ValidationUsernameExist : ValidationAttribute
{
    protected override ValidationResult? IsValid(object? username, ValidationContext validationContext)
    {
        var service = validationContext.GetService(typeof(UserService)) as UserService;
        if (username is string)
        {
            if(!service.DoesUsernameExist(username as string)){
                return ValidationResult.Success;
            }
        }

        return new ValidationResult("This username already exists");
    }
}