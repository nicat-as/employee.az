package az.employee.service;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;

import java.util.List;
import java.util.Optional;

public interface JobService {
    long getAllJobCount();
    List<JobCategoryCount> getJobCategoryCount();
    List<Job> getRecentJobList();
    List<Job> getAllJobsPaging(int page);
    long getJobPageCount(long id);
    long getPageCount();

    Optional<Job> getJobById(long id);
    Job addJob(Job job);
    Job updateJob(Job job);
    boolean deleteJobById(long id);
}
