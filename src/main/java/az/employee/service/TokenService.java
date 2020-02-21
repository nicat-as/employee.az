package az.employee.service;

import az.employee.domain.Token;
import az.employee.domain.User;

import java.util.Optional;

public interface TokenService {
    Token generateToken(User user);
    Token saveToken(Token token);
    Optional<Token> getToken(String token);

}
