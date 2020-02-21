package az.employee.repository;

import az.employee.domain.ArchiveJobs;

import java.util.List;
import java.util.Optional;

public interface ArchiveJobsRepository {

    List<ArchiveJobs> getArchiveListJobsListWithPaging(String sql, int start, int length, String filter,long userId);

    long getDataCount(long userId);

    long getFilteredDataCount(long userId, String filter);

    Optional<ArchiveJobs> getArchiveJobsById(long organizationId);
}
