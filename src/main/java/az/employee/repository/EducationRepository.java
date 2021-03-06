package az.employee.repository;

import az.employee.domain.Education;

import java.util.List;
import java.util.Optional;

public interface EducationRepository {

    Education addEducation(Education education);

    Optional<Education> getEducationById(long educationId);

    Education updateEducation(Education education);

    void deleteEducation(long educationId);

    List<Education> getEducationList(long id);

}
