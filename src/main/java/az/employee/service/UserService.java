package az.employee.service;

import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.domain.Role;
import az.employee.domain.User;

import java.awt.*;
import java.util.List;
import java.util.Optional;

public interface UserService {
    Optional<User> getUserByEmail(String email);
    List<Role> getUserRoles(long userId);
    Optional<User> getUserByToken(String token);
}
