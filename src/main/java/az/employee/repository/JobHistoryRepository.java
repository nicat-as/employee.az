package az.employee.repository;

import az.employee.domain.JobHistory;

import java.util.List;
import java.util.Optional;

public interface JobHistoryRepository {

    JobHistory addJobHistory(JobHistory jobHistory);

    Optional<JobHistory> getJobHistoryById(long id);

    JobHistory updateJobHistory(JobHistory jobHistory);

    void deleteJobHistory(long id);

    List<JobHistory> getJobHistoryList(long id);

}
