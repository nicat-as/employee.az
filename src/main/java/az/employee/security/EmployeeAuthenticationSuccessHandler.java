package az.employee.security;

import az.employee.domain.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@Component
public class EmployeeAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        UserPrincipal userPrincipal = (UserPrincipal) authentication.getPrincipal();
        User user = userPrincipal.getUser();
        String page = user.getRoleList().get(0).getPage();
        System.out.println("EmployeeAuthenticationSuccessHandler redirect user to " + page);
        request.getSession().setAttribute("user", user);
        request.getSession().setAttribute("loginTime", LocalDateTime.now());
        response.sendRedirect(request.getContextPath() + page);
    }
}
