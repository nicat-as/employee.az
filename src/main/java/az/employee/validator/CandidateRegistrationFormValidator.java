package az.employee.validator;

import az.employee.domain.CandidateRegistrationForm;
import az.employee.service.ValidationService;
import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import static az.employee.constants.ValidateConstants.*;

@Component
public class CandidateRegistrationFormValidator implements Validator {

    @Autowired
    private ValidationService validationService;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(CandidateRegistrationForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {

        /*
            1.Validate firstName;
                1.1 not null;
                1.2 not empty and trim min length >= 2
                1.3 should be initcap letters;
                1.4 max length <= 50

            2.Validate lastName;
                    2.1 not null;
                    2.2 not empty and trim initcap  min length >= 2
                    2.3 should be letters;
                    2.4 max length <= 50

            3.validate email;
                3.1 not null;
                3.2 valid email(regex);
                3.3 can not duplicate;

            4.Validate password;
                4.1 not null;
                4.2 not empty and minLength >= 8;
                4.3 check password complexity ;
                4.4 password = passwordConfirm

            6.Validate acceptTerms;
                6.1 should be checked


         */


        CandidateRegistrationForm form = (CandidateRegistrationForm) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"firstName","candidate.regForm.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"lastName","candidate.regForm.surName.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email","candidate.regForm.email.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"password","candidate.regForm.password.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"passwordConfirm","candidate.regForm.passwordConfirm.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"acceptTerms","candidate.regForm.acceptTerms.required");

        if (!errors.hasErrors()) {

            /*

            1.Validate firstName;
                1.1 not null;
                1.2 not empty and trim min length >= 2
                1.3 should be letters;
                1.4 max length <= 50

             */
            if (!form.getFirstName().matches("[a-zA-Z]*")) {
                errors.rejectValue("firstName","candidate.regForm.name.alpha");
            }

            if (!GenericValidator.isInRange(form.getFirstName().length(),FIRST_NAME_MIN_LENGTH,FIRST_NAME_MAX_LENGTH)){
                errors.rejectValue("firstName","candidate.regForm.name.length",new Object[]{FIRST_NAME_MIN_LENGTH,FIRST_NAME_MAX_LENGTH},"error min max length");
            }

            /*

             2.Validate lastName;
                    2.1 not null;
                    2.2 not empty and trim initcap  min length >= 2
                    2.3 should be letters;
                    2.4 max length <= 50
             */

            if (!form.getLastName().matches("[a-zA-Z]*")) {
                errors.rejectValue("lastName","candidate.regForm.surname.alpha");
            }

            if (!GenericValidator.isInRange(form.getLastName().length(),LAST_NAME_MIN_LENGTH,LAST_NAME_MAX_LENGTH)) {
                errors.rejectValue("lastName","candidate.regForm.surName.length",new Object[]{LAST_NAME_MIN_LENGTH,LAST_NAME_MAX_LENGTH},"error min max length");
            }

            /*
                3.validate email;
                3.1 not null;
                3.2 valid email(regex);
                3.3 can not duplicate;
             */

            if (!GenericValidator.isEmail(form.getEmail())) {
                errors.rejectValue("email","candidate.regForm.email.true");
            }

            if (validationService.isDuplicate(form.getEmail())) {
                errors.rejectValue("email","candidate.regForm.email.duplicate");
            }

            /*
              4.Validate password;
                4.1 not null;
                4.2 not empty and minLength >= 8;
                4.3 check password complexity ;
                4.4 password = passwordConfirm
             */

            if (!checkPass(form.getPassword())) {
                errors.rejectValue("password","candidate.regForm.password.valid");
            }

            if (!GenericValidator.isInRange(form.getPassword().length(),PASSWORD_MIN_LENGTH,PASSWORD_MAX_LENGTH)) {
                errors.rejectValue("password","candidate.regForm.password.length",new Object[]{PASSWORD_MIN_LENGTH,PASSWORD_MAX_LENGTH},"error min max length");
            }

            if (!form.getPassword().equals(form.getPasswordConfirm())) {
                errors.rejectValue("password","candidate.regForm.password.equal");
            }

        }
    }

    public boolean checkPass(String password) {
        boolean hasNum = false;
        boolean hasCap = false;
        boolean hasLow = false;
        char c;

        for (int i = 0; i < password.length(); i++) {
            c = password.charAt(i);

            if (Character.isDigit(c)) {
                hasNum = true;
            }else if (Character.isUpperCase(c)) {
                hasCap = true;
            }else if (Character.isLowerCase(c)) {
                hasLow = true;
            }
            if (hasCap && hasNum && hasLow) {
                return true;
            }
        }

        return false;
    }
}
