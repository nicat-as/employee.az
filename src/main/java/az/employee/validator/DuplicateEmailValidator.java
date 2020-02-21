package az.employee.validator;

import az.employee.service.ValidationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

@Component
public class DuplicateEmailValidator implements ConstraintValidator<NotDuplicateEmail, String> {

    @Autowired
    private ValidationService validationService;

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        return !validationService.isDuplicate(value);
    }
}
