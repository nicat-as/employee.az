package az.employee.validator;

import az.employee.domain.Company;
import az.employee.service.ValidationService;
import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


@Component
public class CompanyRegistrationFormValidator implements Validator {

    @Autowired
    private ValidationService validationService;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(Company.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Company form = (Company) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"organizationName","candidate.regForm.name.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"industryName","company.regForm.industryName.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"headOffice","company.regForm.headOffice.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"global","company.regForm.global.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"about","company.regForm.about.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"global","company.regForm.about.required");

        if (!errors.hasErrors()) {
            if (form.getEmail()!=null && !form.getEmail().equals("") && !GenericValidator.isEmail(form.getEmail())) {
                errors.rejectValue("email","candidate.regForm.email.true");
            }

        }
    }

}
