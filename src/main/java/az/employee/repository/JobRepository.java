package az.employee.repository;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;

import java.util.List;
import java.util.Optional;

public interface JobRepository {
    long getAllJobCount();
    List<JobCategoryCount> getJobCategoryCount();
    List<Job> getRecentJob();
    Optional<Job> getJobById(long id);
    Job addJob(Job job);
    Job updateJob(Job job);
    boolean deleteJobById(long jobId);

    List<Job> getAllJobsPaging(int page);
    long getJobPageCount(long id);
    long getPageCount();
}
