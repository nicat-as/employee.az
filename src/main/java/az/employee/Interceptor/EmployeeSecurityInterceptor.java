package az.employee.Interceptor;

import az.employee.domain.Role;
import az.employee.domain.User;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URI;

import static az.employee.util.SecurityUtility.hasRole;


//@Component
public class EmployeeSecurityInterceptor extends HandlerInterceptorAdapter {

    private static Logger log = Logger.getLogger(EmployeeSecurityInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean success = false;

        if (request.getSession().getAttribute("user") != null) {
            User user = (User) request.getSession().getAttribute("user");
            // bu o demekdirki artiq login olub yeni sesiyada var user

                String link = request.getRequestURL().toString();

            System.out.println("link = " +link);



            URI uri = new URI(request.getRequestURL().toString());
            String url = getNormalizedUrl(uri, request);
            String requestUrl = request.getRequestURL().toString();
            log.trace("requestUrl = " + requestUrl);
            log.trace("url = " + url);
            log.trace("user roles = " + user.getRoleList());
            requestUrl.startsWith(url + "customer/");

            System.out.println("requestUrl = " + requestUrl);
            System.out.println("url = " + url);
            System.out.println("user roles = " + user.getRoleList());


            if (requestUrl.startsWith(url + "admin") && hasRole(user,Role.ADMIN)) {
                System.out.println("allow to admin");
                log.trace("allow to admin logmes");
                success = true;

            }else if (requestUrl.startsWith(url + "candidate") && hasRole(user,Role.CANDIDATE) || hasRole(user,Role.ADMIN)) { //bu o demekdirki admin hemde companye gire biler

                log.trace("allow to candidate logmes");
                System.out.println("allow to candidate");
                success = true;

            }else if (requestUrl.startsWith(url + "company") && hasRole(user,Role.COMPANY) || hasRole(user,Role.ADMIN)) {

                log.trace("allow to company logmes");
                System.out.println("allow to company");
                success = true;

            }else {
                log.trace("redirect to access-denied");
                System.out.println("redirect to access-denied");
                response.sendRedirect(request.getContextPath() + "/forbidden");
            }


        }else {
            success = false;
            System.out.println("user not logged in redirect to login page");
            response.sendRedirect(request.getContextPath() + "/login");

        }
        return success;
    }

    private static String getNormalizedUrl(URI uri, HttpServletRequest request) {
        String url = "";
        if(uri.getPort() != -1) {
            url = uri.getScheme() + "://" + uri.getHost() + ":" + uri.getPort() + "/" + request.getContextPath();
        } else {
            url = uri.getScheme() + "://" + uri.getHost() + "/" + request.getContextPath();
        }
        return url;
    }
}
