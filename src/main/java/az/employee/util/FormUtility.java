package az.employee.util;

import az.employee.domain.Candidate;
import az.employee.domain.CandidateRegistrationForm;

public class FormUtility {
    public static Candidate getCandidate(CandidateRegistrationForm form) {
        Candidate candidate = new Candidate();
        candidate.getUser().setEmail(form.getEmail());
        candidate.getUser().setName(form.getFirstName());
        candidate.getUser().setSurname(form.getLastName());
        candidate.getUser().setPassword(form.getPassword());
        return candidate;
    }
}
