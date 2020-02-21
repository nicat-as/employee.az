package az.employee.repository;

import az.employee.domain.Application;

import java.util.List;
import java.util.Optional;

public interface ApplicationRespository {

    Optional<Application> getApplicationById(int id);

    List<Application> getApplicationListWithPaging(String sql, int start, int length, String filter, long userId);

    long getApplicationCount(long userId);

    long getFilteredApplicationCount(String filter, long userId);
}
