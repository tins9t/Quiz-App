using infrastructure.QueryModels;
using infrastructure.Repositories;
using Microsoft.Extensions.Logging;
namespace service;

public class PasswordHashService
{
    private readonly ILogger<PasswordHashService> _logger;
    private readonly PasswordHashAlgorithm _passwordHashAlgorithm;
    private readonly PasswordHashRepository _passwordHashRepository;
    private readonly UserRepository _userRepository;
    
    public PasswordHashService(PasswordHashAlgorithm passwordHashAlgorithm, PasswordHashRepository passwordHashRepository, UserRepository userRepository, ILogger<PasswordHashService> logger)
    {
        _passwordHashAlgorithm = passwordHashAlgorithm;
        _passwordHashRepository = passwordHashRepository;
        _userRepository = userRepository;
        _logger = logger;
    }
    
    
    public User Authenticate(string email, string password)
    {

        try
        {
            var passwordHash = _passwordHashRepository.GetByEmail(email);

            if (_passwordHashAlgorithm.VerifyHashedPassword(email, password, passwordHash.Hash, passwordHash.Salt))
            {
                return _userRepository.GetUserById(passwordHash.UserId);
            }

        }
        catch (Exception e)
        {
            _logger.LogError("Authenticate error: {Message}", e);
        }

        return null;
    }

    
    public void Register(User user, string password)
    {
        var salt = _passwordHashAlgorithm.GenerateSalt();
        var hash = _passwordHashAlgorithm.HashPassword(password, salt);
        _passwordHashRepository.CreatePasswordHash(user.Id, hash, salt);
    }

    public void UpdateCredentials(User user, string newPassword, string password)
    {
        try
        {
            var passwordHash = _passwordHashRepository.GetPasswordHashByUserId(user.Id);

            if (_passwordHashAlgorithm.VerifyHashedPassword(user.Email, password, passwordHash.Hash, passwordHash.Salt))
            {
                var salt = _passwordHashAlgorithm.GenerateSalt();
                var hash = _passwordHashAlgorithm.HashPassword(newPassword, salt);
                _passwordHashRepository.UpdatePassword(user.Id, newPassword, salt);
            }

        }
        catch (Exception e)
        {
            _logger.LogError("Update password error: {Message}", e);
        }
    }
}