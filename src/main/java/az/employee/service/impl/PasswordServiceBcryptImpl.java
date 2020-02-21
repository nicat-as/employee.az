package az.employee.service.impl;

import az.employee.service.PasswordService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service
public class PasswordServiceBcryptImpl implements PasswordService {
    @Override
    public String hashPassword(String clearPassword) {
        return BCrypt.hashpw(clearPassword,BCrypt.gensalt());
    }
}
