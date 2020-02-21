package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;
import az.employee.repository.JobRepository;
import az.employee.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;


@Service
public class JobServiceImpl implements JobService {

    @Autowired
    JobRepository jobRepository;

    @Autowired
    private EmployeeazConfiguration configuration;

//    @Value("${employeeaz.company-jobs-page-count}")
//    long pageCount;

//    @Value("${employeeaz.job-count}")
//    long jobPageCount;

    @Override
    public long getAllJobCount() {
        return jobRepository.getAllJobCount();
    }

    @Override
    public List<JobCategoryCount> getJobCategoryCount() {
        return jobRepository.getJobCategoryCount();
    }

    @Override
    public List<Job> getRecentJobList() {
        return jobRepository.getRecentJob();
    }

    @Override
    public Optional<Job> getJobById(long id) {
        return jobRepository.getJobById(id);
    }

    @Transactional
    @Override
    public Job addJob(Job job) {
        return jobRepository.addJob(job);
    }

    @Transactional
    @Override
    public Job updateJob(Job job) {
        return jobRepository.updateJob(job);
    }

    @Transactional
    @Override
    public boolean deleteJobById(long jobId) {
        return jobRepository.deleteJobById(jobId);
    }

    @Override
    public List<Job> getAllJobsPaging(int page) {
        return jobRepository.getAllJobsPaging(page);
    }

    @Override
    public long getJobPageCount(long id) {
        long jobCount = jobRepository.getJobPageCount(id);
        long count = jobCount/configuration.getCompanyJobsPageCount();

        if (jobCount % configuration.getCompanyJobsPageCount() > 0) {
            count++;
        }
        return count;
    }

    @Override
    public long getPageCount() {

        long jobCount = jobRepository.getPageCount();
        long pageCount = jobCount/configuration.getJobCount();

        if (jobCount % configuration.getJobCount() > 0) {
            pageCount++;
        }
        return pageCount;

    }
}
