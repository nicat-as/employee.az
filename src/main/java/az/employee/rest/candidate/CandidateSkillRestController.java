package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.Skill;
import az.employee.service.CandidateService;
import az.employee.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RequestMapping(value = {"/rest/candidates/", "/admin/rest/candidates/"})
@RestController
public class CandidateSkillRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private SkillService skillService;

    @GetMapping(value = {"/{candidateId}/skills", "/{candidateId}/skills/"})
    public List<Skill> getSkillList(
            @PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            List<Skill> skillList =  skillService.getSkillList(candidateId);
            System.out.println("skill list = " + skillList);
            return skillList;
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @GetMapping(value = {"/{candidateId}/skills/{skillId}", "/{candidateId}/skills/{skillId}/"})
    public Skill getSkillById(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "skillId") long skillId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Skill> optionalSkill = skillService.getSkillById(skillId);
            if (optionalSkill.isPresent()) {
                Skill skill = optionalSkill.get();
                if (skill.getCandidateId() == candidateId) {
                    return skill;
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "skill with id " + skill + " does not belong to candidate " + candidateId);
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("skill with id %d not found", skillId));
            }

        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }

    }

    @PostMapping(value = {"/{candidateId}/skills", "/{candidateId}/skills/"})
    public Skill addSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestBody Skill skill) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            skill.setCandidateId(candidateId);
            return skillService.addSkill(skill);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @PutMapping(value = {"/{candidateId}/skills/{skillId}", "/{candidateId}/skills/{skillId}/"})
    public Skill updateSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "skillId") long skillId,
            @RequestBody Skill skill) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Skill> optionalSkill = skillService.getSkillById(skillId);
            if (optionalSkill.isPresent()) {
                Skill skillFromDB = optionalSkill.get();
                if (skillFromDB.getCandidateId() == candidateId) {
                    skill.setId(skillId);
                    skill.setCandidateId(candidateId);
                    return skillService.updateSkill(skill);
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            String.format("skill with id %d does not belong candidate with id %d", skillId, candidateId));
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("skill with id %d not found", skillId));
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @DeleteMapping(value = {"/{candidateId}/skills/{skillId}", "/{candidateId}/skills/{skillId}/"})
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteSkill(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "skillId") long skillId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            try {
                skillService.deleteSkill(skillId);
            } catch (RuntimeException e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }
}
