package az.employee.service.impl;

import az.employee.domain.Token;
import az.employee.domain.User;
import az.employee.repository.TokenRepository;
import az.employee.service.TokenService;
import az.employee.util.Common;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;

@Service
public class TokenServiceImpl implements TokenService {

    @Autowired
    private TokenRepository tokenRepository;

    @Override
    public Token generateToken(User user) {
        Token token = new Token();
        token.setUser(user);
        String tokenObj = Common.generateToken();
        token.setValue(tokenObj);
        token.setGenerationDate(LocalDateTime.now());
        token.setExpireDate(LocalDateTime.now().plusDays(3));
        return token;
    }

    @Override
    public Token saveToken(Token token) {
        return tokenRepository.saveToken(token);
    }

    @Override
    public Optional<Token> getToken(String token) {
        return tokenRepository.getToken(token);
    }


}
