package az.employee.util;

import az.employee.domain.Role;
import az.employee.domain.User;

public class SecurityUtility {

    public static boolean hasRole(User user, Role role) {
        return user.getRoleList().stream().anyMatch(r -> r == role);
    }
}
