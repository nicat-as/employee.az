package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.LanguageSkill;
import az.employee.service.CandidateService;
import az.employee.service.LanguageSkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RequestMapping(value = {"/rest/candidates/", "admin/rest/candidates/"})
@RestController
public class CandidateLanguageSkillRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private LanguageSkillService languageSkillService;

    @GetMapping(value = {"/{candidateId}/languages", "/{candidateId}/languages/"})
    public List<LanguageSkill> getLanguageSkillList(
            @PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            return languageSkillService.getLanguageSkillList(candidateId);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @GetMapping(value = {"/{candidateId}/languages/{languageSkillId}", "/{candidateId}/languages/{languageSkillId}/"})
    public LanguageSkill getLanguageSkillById(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "languageSkillId") long languageSkillId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<LanguageSkill> optionalLanguageSkill = languageSkillService.getLanguageSkillById(languageSkillId);
            if (optionalLanguageSkill.isPresent()) {
                LanguageSkill languageSkill = optionalLanguageSkill.get();
                if (languageSkill.getCandidateId() == candidateId) {
                    return languageSkill;
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "language skill with id " + languageSkillId + " does not belong to candidate " + candidateId);
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("language skill with id %d not found", languageSkillId));
            }

        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @PostMapping(value = {"/{candidateId}/languages", "/{candidateId}/languages/"})
    public LanguageSkill addLanguageSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestBody LanguageSkill languageSkill) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            languageSkill.setCandidateId(candidateId);
            return languageSkillService.addLanguageSkill(languageSkill);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @PutMapping(value = {"/{candidateId}/languages/{languageSkillId}", "/{candidateId}/languages/{languageSkillId}/"})
    public LanguageSkill updateLanguageSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "languageSkillId") long languageSkillId,
            @RequestBody LanguageSkill languageSkill) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<LanguageSkill> optionalLanguageSkill = languageSkillService.getLanguageSkillById(languageSkillId);
            if (optionalLanguageSkill.isPresent()) {
                LanguageSkill languageSkillFromDB = optionalLanguageSkill.get();
                if (languageSkillFromDB.getCandidateId() == candidateId) {
                    languageSkill.setId(languageSkillId);
                    languageSkill.setCandidateId(candidateId);
                    return languageSkillService.updateLanguageSkill(languageSkill);
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            String.format("language skill with id %d does not belong candidate with id %d", languageSkillId, candidateId));
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("language skill with id %d not found", languageSkillId));
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @DeleteMapping(value = {"/{candidateId}/languages/{languageSkillId}", "/{candidateId}/languages/{languageSkillId}/"})
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteLanguageSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "languageSkillId") long languageSkillId) {
        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            try {
                languageSkillService.deleteLanguageSkill(languageSkillId);
            } catch (RuntimeException e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }
}
