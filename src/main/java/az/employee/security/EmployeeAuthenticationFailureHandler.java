package az.employee.security;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class EmployeeAuthenticationFailureHandler implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        System.out.println("login ugursuz oldu, sebeb " + exception.getMessage());
        // exception novune gore ferqli sehifelere gondermek mumkundur
        // password expire olubsa, sifre deyismek sehifesine
        // status lock-dursa, ban melumat sehifesine
        // 3 defe arxa arxaya password yanlis yazilsa, 4cu defe captcha kodu teleb ele
        // 5ci defede ise accountu lock ele, account lock olsa, ferqli sehifeye gonder
        // todo
        response.sendRedirect(request.getContextPath() + "login?error");
    }
}
