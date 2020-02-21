package az.employee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.Collections;

@EnableScheduling
@EnableSwagger2
@SpringBootApplication
public class EmployeeazSpringApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmployeeazSpringApplication.class, args);
	}

	@Bean
	public Docket getSwaggerConfig() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors.basePackage("az.employee"))
				.paths(PathSelectors.ant("/rest/**"))
				.build()
				.apiInfo(getRestApiInfo());
	}

	private ApiInfo getRestApiInfo() {
		return new ApiInfo("Employee.az REST API Documentation",
				"Full documentation of REST API endpoints",
				"1.0",
				"http://www.employee.az/termsandconditions",
				new Contact("Ramin Orujov", "https://linkedin.com/in/raminorujov", "dev@employee.az"),
				"Apache 2.0",
				"",
				Collections.emptyList()
				);
	}
}
