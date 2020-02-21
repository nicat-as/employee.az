package az.employee.service;

import az.employee.domain.ArchiveJobs;
import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public interface ArchiveJobsService {

    DataTableResult getJobsDataTable(DataTableRequest request);

    Optional<ArchiveJobs> getArchiveJobsById(long organizationId);
}
