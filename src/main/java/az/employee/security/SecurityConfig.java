package az.employee.security;

import az.employee.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private EmployeeUserDetailsService userDetailsService;

    @Autowired
    private EmployeeAuthenticationSuccessHandler authenticationSuccessHandler;

    @Autowired
    private EmployeeAuthenticationFailureHandler authenticationFailureHandler;

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring()
                .antMatchers("/resources/**", "/images/**", "/css/**", "/fonts/**", "/js/**", "/assets/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests()
//                .antMatchers("/admin/**").hasRole("ADMIN")
//                .antMatchers("/candidate/**").hasAnyRole("CANDIDATE", "ADMIN")
//                .antMatchers("/company/**").hasAnyRole("COMPANY", "ADMIN")
//                .antMatchers("/").permitAll()
//                .and().csrf().disable()
//                .formLogin()
//                .loginPage("/login").permitAll()
//                .usernameParameter("email")
//                .successHandler(authenticationSuccessHandler)
//                .failureHandler(authenticationFailureHandler);

        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers(HttpMethod.POST, "/rest/jobs/").hasAnyRole(
                        Role.CANDIDATE.name(),
                        Role.COMPANY.name(),
                        Role.ADMIN.name()
                )
                .antMatchers(HttpMethod.PUT, "/rest/jobs/*").hasAnyRole(
                        Role.CANDIDATE.name(),
                        Role.COMPANY.name(),
                        Role.ADMIN.name()
                )
                .antMatchers(HttpMethod.DELETE, "/rest/jobs/*").hasAnyRole(
                        Role.CANDIDATE.name(),
                        Role.COMPANY.name(),
                        Role.ADMIN.name()
                )
                .antMatchers(HttpMethod.GET, "/rest/jobs/*").permitAll()
                .and().httpBasic()
                .and()
                    .formLogin().disable()
                    .csrf().disable();

    }

//    @Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("ali@gmail.com")
//                .password("123456")
//                .roles("CANDIDATE")
//                .and()
//                .withUser("tofiq@canada.com")
//                .password("canada")
//                .roles("ADMIN")
//                .and()
//                .withUser("hr@azercell.com")
//                .password("azercell123")
//                .roles("COMPANY");
//    }


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(getDatabaseAuthenticationProvider());
    }

    @Bean
    public AuthenticationProvider getDatabaseAuthenticationProvider() {
        DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
        daoAuthenticationProvider.setUserDetailsService(userDetailsService);
        daoAuthenticationProvider.setPasswordEncoder(getPasswordEncoder());
        return daoAuthenticationProvider;
    }

    @Bean
    PasswordEncoder getPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
