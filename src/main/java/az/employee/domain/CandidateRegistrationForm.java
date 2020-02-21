package az.employee.domain;

import az.employee.validator.EqualFields;
import az.employee.validator.NotDuplicateEmail;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@EqualFields(baseField = "password", matchField = "passwordConfirm", message = "Password and password confirmation are different!")
public class CandidateRegistrationForm implements Serializable {

    @NotNull
    @Size(min = 2, max = 50, message = "{candidate.register.name.length}")
    private String firstName;

    @NotNull
    @Size(min = 2, max = 50)
    private String lastName;

    @Size(min = 6, max = 200, message = "{candidate.register.email.maxlength}")
    @Email(message = "{candidate.register.email.invalid}")
    @NotDuplicateEmail()
    private String email;

    @NotNull
    @Size(min = 8, max = 20)
    private String password;

    @NotNull
    @Size(min = 8, max = 20)
    private String passwordConfirm;

    @NotBlank
    private String acceptTerms;

    public CandidateRegistrationForm() {
    }


    @Override
    public String toString() {
        return "CandidateRegistrationForm{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", passwordConfirm='" + passwordConfirm + '\'' +
                ", acceptTerms='" + acceptTerms + '\'' +
                '}';
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public String getAcceptTerms() {
        return acceptTerms;
    }

    public void setAcceptTerms(String acceptTerms) {
        this.acceptTerms = acceptTerms;
    }
}
