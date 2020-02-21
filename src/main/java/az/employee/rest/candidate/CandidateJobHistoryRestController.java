package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.JobHistory;
import az.employee.exception.ResourceDeleteException;
import az.employee.service.CandidateService;
import az.employee.service.JobHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RequestMapping(value = {"/rest/candidates/", "admin/rest/candidates/"})
@RestController
public class CandidateJobHistoryRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private JobHistoryService jobHistoryService;

    @GetMapping(value = {"/{candidateId}/job-history", "/{candidateId}/job-history/"})
    public List<JobHistory> getJobHistoryList(
            @PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            return jobHistoryService.getJobHistoryList(candidateId);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Candidate id %s not found", candidateId));
        }
    }

    @GetMapping(value = {"/{candidateId}/job-history/{jobHistoryId}", "/{candidateId}/job-history/{jobHistoryId}/"})
    public JobHistory getJobHistoryById(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "jobHistoryId") long jobHistoryId
    ) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<JobHistory> optionalJobHistory = jobHistoryService.getJobHistoryById(jobHistoryId);
            if (optionalJobHistory.isPresent()) {
                JobHistory jobHistory = optionalJobHistory.get();
                if (jobHistory.getCandidateId() == candidateId) {
                    return jobHistory;
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "job history with id " + jobHistoryId + " does not belong to candidate " + candidateId);
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "candidate job history with id " + jobHistoryId + " not found");
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %s not found", candidateId));
        }
    }

    @PostMapping(value = {"/{candidateId}/job-history", "/{candidateId}/job-history/"})
    public JobHistory addJobHistory(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestBody JobHistory jobHistory) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            jobHistory.setCandidateId(candidateId);
            return jobHistoryService.addJobHistory(jobHistory);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @PutMapping(value = {"/{candidateId}/job-history/{jobHistoryId}", "/{candidateId}/job-history/{jobHistoryId}/"})
    public JobHistory updateJobHistory(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "jobHistoryId") long jobHistoryId,
            @RequestBody JobHistory jobHistory) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<JobHistory> optionalJobHistory = jobHistoryService.getJobHistoryById(jobHistoryId);
            if (optionalJobHistory.isPresent()) {
                // update
                JobHistory jobHistoryFromDB = optionalJobHistory.get();
                if (jobHistoryFromDB.getCandidateId() == candidateId) {
                    jobHistory.setId(jobHistoryId);
                    jobHistory.setCandidateId(candidateId);
                    return jobHistoryService.updateJobHistory(jobHistory);
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "Job history with id " + jobHistoryId + " does not belong to candidate " + candidateId);
                }
            } else {
                // add
                jobHistory.setCandidateId(candidateId);
                return jobHistoryService.addJobHistory(jobHistory);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Candidate id %s not found", candidateId));
        }
    }

    @DeleteMapping(value = {"/{candidateId}/job-history/{jobHistoryId}", "/{candidateId}/job-history/{jobHistoryId}/"})
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteJobHistory(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "jobHistoryId") long jobHistoryId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {

            try {
                jobHistoryService.deleteJobHistory(jobHistoryId);
            } catch (ResourceDeleteException e) {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Job History with id " + jobHistoryId + " not found");
            } catch (Exception e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Candidate id %s not found", candidateId));
        }
    }
}
