using System.ComponentModel.DataAnnotations;
using service;

namespace Recipe_Web_App.ValidationModels;

public class ValidationEmailExist : ValidationAttribute
{
    protected override ValidationResult? IsValid(object? email, ValidationContext validationContext)
    {
        var service = validationContext.GetService(typeof(UserService)) as UserService;
        if (email is string)
        {
            if(!service.DoesEmailExist(email as string)){
                return ValidationResult.Success;
            }
        }

        return new ValidationResult("This email already exists");
    }
}