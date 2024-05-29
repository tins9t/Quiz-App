using System.ComponentModel.DataAnnotations;
using service;

namespace Recipe_Web_App.ValidationModels;

public class ValidationUsernameExist : ValidationAttribute
{
    protected override ValidationResult? IsValid(object? username, ValidationContext validationContext)
    {
        if (username == null || string.IsNullOrEmpty(username.ToString())) // For edit user
        {
            return ValidationResult.Success;
        }

        var service = validationContext.GetService(typeof(UserService)) as UserService;
        if (service != null && username is string usernameStr)
        {
            if (!service.DoesUsernameExist(usernameStr))
            {
                return ValidationResult.Success;
            }
        }

        return new ValidationResult("This username already exists");
    }
}
