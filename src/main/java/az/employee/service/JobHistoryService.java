package az.employee.service;

import az.employee.domain.JobHistory;

import java.util.List;
import java.util.Optional;

public interface JobHistoryService {

    JobHistory addJobHistory(JobHistory jobHistory);

    Optional<JobHistory> getJobHistoryById(long id);

    JobHistory updateJobHistory(JobHistory jobHistory);

    void deleteJobHistory(long id);

    List<JobHistory> getJobHistoryList(long candidateId);
}
