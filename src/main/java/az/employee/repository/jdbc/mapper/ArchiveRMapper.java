package az.employee.repository.jdbc.mapper;

import az.employee.domain.ArchiveJobs;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ArchiveRMapper implements RowMapper<ArchiveJobs> {
    @Override
    public ArchiveJobs mapRow(ResultSet rs, int i) throws SQLException {

        ArchiveJobs archiveJobs = new ArchiveJobs();
        archiveJobs.setPosition(rs.getString("position"));
        archiveJobs.setUserName(rs.getString("name"));
        archiveJobs.setAbout(rs.getString("about"));
        archiveJobs.setRequirement(rs.getString("requirement"));
        archiveJobs.setSalaryMin(rs.getBigDecimal("salary_min"));
        archiveJobs.setSalaryMax(rs.getBigDecimal("salary_max"));
        archiveJobs.setPostDate(rs.getDate("post_date").toLocalDate());
        archiveJobs.setDeadline(rs.getDate("deadline").toLocalDate());
        archiveJobs.setCountryName(rs.getString("country_name"));
        archiveJobs.setCityName(rs.getString("city_name"));
        archiveJobs.setJobType(rs.getString("job_type_name"));
        archiveJobs.setExperienceMin(rs.getInt("experience_min"));
        archiveJobs.setExperienceMax(rs.getInt("experience_max"));
        archiveJobs.setJobCategory(rs.getString("job_category_name"));
        archiveJobs.setOrganizationName(rs.getString("organization_name"));
        archiveJobs.setPremium(rs.getInt("premium"));


        return archiveJobs;
    }
}
