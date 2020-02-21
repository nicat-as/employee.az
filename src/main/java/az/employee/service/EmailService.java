package az.employee.service;

import az.employee.domain.Email;
import az.employee.domain.Token;

public interface EmailService {
    Email generateActivationEmail(Token token);
    Email saveEmail(Email email);
    void sendEmail(String from, String to, String subject, String body);
}
