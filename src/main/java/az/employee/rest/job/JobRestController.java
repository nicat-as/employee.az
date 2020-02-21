package az.employee.rest.job;

import az.employee.domain.Job;
import az.employee.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;

@RequestMapping("/rest/jobs")
@RestController
public class JobRestController {

    @Autowired
    private JobService jobService;

    @GetMapping("/recent")
    public List<Job> getRecentJobList() {
        return jobService.getRecentJobList();
    }

    @GetMapping("/")
    public List<Job> getJobList(
            @RequestParam(name = "page", defaultValue = "1") int page,
            @RequestParam(name = "size", defaultValue = "10") int size,
            @RequestParam(name = "orderBy", defaultValue = "id") String sortColumn,
            @RequestParam(name = "orderDir", defaultValue = "asc") String sortDirection,
            @RequestParam(name = "filter", defaultValue = "") String filter
    ) {
        List<Job> jobs = jobService.getRecentJobList();

        return jobs;
    }

    @GetMapping("/{id}")
    public Job getJob(@PathVariable(name = "id") long id) {
        Optional<Job> optionalJob = jobService.getJobById(id);
        Job job = null;
        if(optionalJob.isPresent()) {
            job = optionalJob.get();
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Job with id " + id + " not found");
        }

        return job;
    }

    @PostMapping("/")
    public Job addJob(@RequestBody Job job) {
        System.out.println("add new job = " + job);
        job = jobService.addJob(job);
        return job;
    }

    @PutMapping("/{id}")
    public Job updateJob(@RequestBody Job job) {
        System.out.println("put job = " + job);
        Optional<Job> optionalJob = jobService.getJobById(job.getId());
        if(optionalJob.isPresent()) {
            // update
            System.out.println("job with id " + job.getId() + " found, update job");
            job = jobService.updateJob(job);
        } else {
            System.out.println("job with id " + job.getId() + " not found, add new job");
            job = jobService.addJob(job);
        }

        return job;
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteJob(@PathVariable(name = "id") long jobId) {
        boolean result = jobService.deleteJobById(jobId);
        if(!result) {
           throw new ResponseStatusException(HttpStatus.NOT_FOUND, "job not found");
        }
    }
}
