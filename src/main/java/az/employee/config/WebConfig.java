package az.employee.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private EmployeeazConfiguration configuration;

    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer
                .favorParameter(true)
                .parameterName("tofiq")
                .mediaType("xml", MediaType.APPLICATION_XML)
                .mediaType("json", MediaType.APPLICATION_JSON)
                .ignoreAcceptHeader(true)
                .favorPathExtension(true)
//                .ignoreUnknownPathExtensions(true)
                .defaultContentType(MediaType.APPLICATION_JSON);

    }

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        System.out.println("allowed origins = " + configuration.getOrigins());
        String[] origins = new String[configuration.getOrigins().size()];
        for (int i = 0; i < configuration.getOrigins().size(); i++) {
            origins[i] = configuration.getOrigins().get(i);
        }

        registry.addMapping("/rest/**")
                .allowedOrigins(origins)
                .allowedMethods(
                        HttpMethod.GET.name(),
                        HttpMethod.POST.name(),
                        HttpMethod.PUT.name(),
                        HttpMethod.DELETE.name(),
                        HttpMethod.PATCH.name()
                        );
    }


}
