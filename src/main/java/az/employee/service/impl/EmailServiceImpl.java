package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.Email;
import az.employee.domain.Token;
import az.employee.service.EmailService;
import az.employee.util.EmailUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private EmployeeazConfiguration configuration;

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public Email generateActivationEmail(Token token) {
        Email email = new Email();
        String activationLink = configuration.getActivation().getUrl() +"?token=" + token.getValue();
        email.setFrom(configuration.getActivation().getFromEmail());
        email.setTo(token.getUser().getEmail());
        email.setSubject(EmailUtility.registrationSubject());
        email.setBody(EmailUtility.registrationEmail(token.getUser().getName(), token.getUser().getSurname(), activationLink));
        System.out.println("activation link = " + activationLink);
        System.out.println("registration email = " + email);
        return email;
    }

    @Override
    public Email saveEmail(Email email) {
        //todo save to notification queue
        System.out.println("save email = " +email);
        return email;
    }

    @Async
    @Override
    public void sendEmail(String from, String to, String subject, String body) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(body);
        mailSender.send(mailMessage);
    }
}
