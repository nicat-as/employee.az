package az.employee.security;

import az.employee.domain.User;
import az.employee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmployeeUserDetailsService implements UserDetailsService {

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Optional<User> optionalUser =  userService.getUserByEmail(username);
        if(optionalUser.isPresent()) {
            User user = optionalUser.get();
            user.setRoleList(userService.getUserRoles(user.getId()));
            UserPrincipal userPrincipal = new UserPrincipal(user);

            System.out.println("user = " + user);
            System.out.println("user principal = " + userPrincipal);
            return userPrincipal;
        } else {
            throw new UsernameNotFoundException("User with email " + username + " not found!");
        }
    }
}
