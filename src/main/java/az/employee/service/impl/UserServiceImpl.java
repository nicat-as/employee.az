package az.employee.service.impl;

import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.domain.Role;
import az.employee.domain.User;
import az.employee.repository.UserRepository;
import az.employee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public Optional<User> getUserByEmail(String email) {
        return userRepository.getUserByEmail(email);
    }

    @Override
    public List<Role> getUserRoles(long userId) {
        return userRepository.getUserRoles(userId);
    }

    @Override
    public Optional<User> getUserByToken(String token) {
        return userRepository.getUserByToken(token);
    }
}
