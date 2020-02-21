package az.employee.repository;

import az.employee.domain.*;

import java.util.List;
import java.util.Optional;

public interface UserRepository {

    User addUser(User user);

    User updateUser(User user);

    void addRole(User user, Role role);

    Optional<User> getUserByEmail(String email);

    List<Role> getUserRoles(long userId);

    Optional<User> getUserByToken(String token);

    long getTotalCount();

    long getFilterCount(String search);

}
