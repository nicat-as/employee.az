package az.employee.service.impl;

import az.employee.repository.ValidationRepository;
import az.employee.service.ValidationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ValidationServiceImpl implements ValidationService {

    @Autowired
    private ValidationRepository validationRepository;


    @Override
    public boolean isDuplicate(String email) {
        return validationRepository.isDuplicate(email);
    }
}
