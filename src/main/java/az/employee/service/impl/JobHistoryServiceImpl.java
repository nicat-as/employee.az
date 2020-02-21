package az.employee.service.impl;

import az.employee.domain.JobHistory;
import az.employee.repository.JobHistoryRepository;
import az.employee.service.JobHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class JobHistoryServiceImpl implements JobHistoryService {

    @Autowired
    private JobHistoryRepository jobHistoryRepository;

    @Transactional
    @Override
    public JobHistory addJobHistory(JobHistory jobHistory) {
        return jobHistoryRepository.addJobHistory(jobHistory);
    }

    @Override
    public Optional<JobHistory> getJobHistoryById(long id) {
        return jobHistoryRepository.getJobHistoryById(id);
    }

    @Transactional
    @Override
    public JobHistory updateJobHistory(JobHistory jobHistory) {
        return jobHistoryRepository.updateJobHistory(jobHistory);
    }

    @Transactional
    @Override
    public void deleteJobHistory(long id) {
        jobHistoryRepository.deleteJobHistory(id);
    }

    @Override
    public List<JobHistory> getJobHistoryList(long candidateId) {
        return jobHistoryRepository.getJobHistoryList(candidateId);
    }

}
