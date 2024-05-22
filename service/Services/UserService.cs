using infrastructure.QueryModels;
using infrastructure.Repositories;

namespace service;

public class UserService
{
    private readonly UserRepository _userRepository;

    public UserService(UserRepository userRepository)
    {
        _userRepository = userRepository;
    }

    public User CreateUser(User user)
    {
        return _userRepository.CreateUser(user);
    }

    public User UpdateUser(User user)
    {
        return _userRepository.UpdateUser(user);
    }

    public bool DeleteUserById(string userId)
    {
        return _userRepository.DeleteUserById(userId);
    }

    public User GetUserById(string userId)
    {
        return _userRepository.GetUserById(userId);
    }

    public bool DoesUsernameExist(string username)
    {
        return _userRepository.DoesUsernameExist(username);
    }

    public bool DoesEmailExist(string email)
    {
        return _userRepository.DoesEmailExist(email);
    }
}