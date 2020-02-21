package az.employee.repository;

import az.employee.domain.Token;
import az.employee.domain.User;

import java.util.Optional;

public interface TokenRepository {

    Token saveToken(Token token);
    Optional<Token> getToken(String token);
}
