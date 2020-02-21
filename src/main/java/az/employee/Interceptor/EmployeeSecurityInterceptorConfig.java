package az.employee.Interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//@Configuration
public class EmployeeSecurityInterceptorConfig implements WebMvcConfigurer {

    @Autowired
    private EmployeeSecurityInterceptor interceptor;

    // burda veririkki inerceptorumuz hansi linklere isdesin
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(interceptor).addPathPatterns("/admin/*","/candidate/*","/company/*");
    }
}
