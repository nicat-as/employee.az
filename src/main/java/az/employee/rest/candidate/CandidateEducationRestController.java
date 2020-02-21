package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.Education;
import az.employee.service.CandidateService;
import az.employee.service.EducationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RequestMapping(value = {"/rest/candidates/", "/admin/rest/candidates/"})
@RestController
public class CandidateEducationRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private EducationService educationService;

    @GetMapping(value = {"/{candidateId}/educations", "/{candidateId}/educations/"})
    public List<Education> getEducationList(
            @PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            return educationService.getEducationList(candidateId);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %s not found", candidateId));
        }
    }

    @GetMapping(value = {"/{candidateId}/educations/{educationId}", "/{candidateId}/educations/{educationId}/"})
    public Education getEducationById(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "educationId") long educationId
    ) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Education> optionalEducation = educationService.getEducationById(educationId);
            if (optionalEducation.isPresent()) {
                Education education = optionalEducation.get();
                if (education.getCandidateId() == candidateId) {
                    return education;
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "education with id " + educationId + " does not belong to candidate " + candidateId);
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "candidate education with id " + educationId + " not found");
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %s not found", candidateId));
        }
    }

    @PostMapping(value = {"/{candidateId}/educations", "/{candidateId}/educations/"})
    public Education addEducation(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestBody Education education) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            education.setCandidateId(candidateId);
            return educationService.addEducation(education);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @PutMapping(value = {"/{candidateId}/educations/{educationId}", "/{candidateId}/educations/{educationId}/"})
    public Education updateEducation(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "educationId") long educationId,
            @RequestBody Education education) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Education> optionalEducation = educationService.getEducationById(educationId);
            if (optionalEducation.isPresent()) {
                Education educationFromDB = optionalEducation.get();
                if (educationFromDB.getCandidateId() == candidateId) {
                    education.setId(educationId);
                    education.setCandidateId(candidateId);
                    return educationService.updateEducation(education);
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "education with id " + educationId + " does not belong to candidate " + candidateId);
                }
            } else {
                return educationService.addEducation(education);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @DeleteMapping(value = {"/{candidateId}/educations/{educationId}", "/{candidateId}/educations/{educationId}/"})
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteEducation(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "educationId") long educationId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            try {
                educationService.deleteEducation(educationId);
            } catch (RuntimeException e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d is not found", candidateId));
        }
    }
}