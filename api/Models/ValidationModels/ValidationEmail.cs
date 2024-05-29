using System.ComponentModel.DataAnnotations;

namespace Recipe_Web_App.ValidationModels;

public class ValidationEmail : ValidationAttribute
{
    protected override ValidationResult? IsValid(object? email, ValidationContext validationContext)
    {
        if (email == null || string.IsNullOrEmpty(email.ToString())) // For edit user
        {
            return ValidationResult.Success;
        }

        if (email is string)
        {
            if((email as string).Contains("@")){
                return ValidationResult.Success;
            }
        }

        return new ValidationResult("Email is not valid");
    }
}