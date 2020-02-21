package az.employee.repository.jdbc;

import az.employee.domain.Education;
import az.employee.repository.EducationRepository;
import az.employee.repository.jdbc.mapper.EducationRowMapper;
import az.employee.repository.jdbc.sql.EducationQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class EducationRepositoryJdbcImpl implements EducationRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private EducationRowMapper educationRowMapper;

    @Override
    public Education addEducation(Education education) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("candidate_id", education.getCandidateId())
                .addValue("education_level_id", education.getDegree().getId())
                .addValue("start_date", education.getStartDate())
                .addValue("end_date", education.getEndDate())
                .addValue("country_id", education.getCountry().getId())
                .addValue("education_org_id", education.getEducationOrganization().getId())
                .addValue("education_org_name", education.getEducationOrganizationName())
                .addValue("graduated", education.getGraduated());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(EducationQueries.ADD_EDUCATION, params, keyHolder);
        if (count > 0) {
            education.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("Education not added, count = 0");
        }

        return education;
    }

    @Override
    public Optional<Education> getEducationById(long educationId) {
        Optional<Education> optionalEducation = Optional.empty();
        List<Education> educationList = jdbcTemplate.query(EducationQueries.GET_EDUCATION_BY_ID,
                new MapSqlParameterSource("education_id", educationId), educationRowMapper);

        if (!educationList.isEmpty()) {
            optionalEducation = Optional.of(educationList.get(0));
        }

        return optionalEducation;
    }

    @Override
    public Education updateEducation(Education education) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("education_id", education.getId())
                .addValue("education_level_id", education.getDegree().getId())
                .addValue("start_date", education.getStartDate())
                .addValue("end_date", education.getEndDate())
                .addValue("country_id", education.getCountry().getId())
                .addValue("education_org_id", education.getEducationOrganization().getId())
                .addValue("education_org_name", education.getEducationOrganizationName())
                .addValue("graduated", education.getGraduated());

        int count = jdbcTemplate.update(EducationQueries.UPDATE_EDUCATION_BY_ID, params);
        if (count > 0) {
            // todo logging
        } else {
            throw new RuntimeException("education with id " + education.getId() + " not updated");
        }

        return education;
    }

    @Override
    public void deleteEducation(long educationId) {
        int count = jdbcTemplate.update(EducationQueries.DELETE_EDUCATION_BY_ID,
                new MapSqlParameterSource("education_id", educationId));
        if (count == 0) {
            throw new RuntimeException("education with id " + educationId + " not deleted");
        }
    }

    @Override
    public List<Education> getEducationList(long id) {
        return jdbcTemplate.query(
                EducationQueries.GET_EDUCATION_LIST,
                new MapSqlParameterSource("candidate_id", id),
                educationRowMapper);
    }
}
