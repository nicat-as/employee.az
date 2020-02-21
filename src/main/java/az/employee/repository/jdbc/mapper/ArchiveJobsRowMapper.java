package az.employee.repository.jdbc.mapper;

import az.employee.domain.ArchiveJobs;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ArchiveJobsRowMapper implements RowMapper<ArchiveJobs>{

    @Override
    public ArchiveJobs mapRow(ResultSet rs, int i) throws SQLException {

        ArchiveJobs archiveJobs = new ArchiveJobs();
        archiveJobs.setId(rs.getLong("job_id"));
        archiveJobs.setPosition(rs.getString("position"));
        archiveJobs.setUserName(rs.getString("name"));
        archiveJobs.setSalaryMin(rs.getBigDecimal("salary_min"));
        archiveJobs.setSalaryMax(rs.getBigDecimal("salary_max"));
        archiveJobs.setPostDate(rs.getDate("post_date").toLocalDate());
        archiveJobs.setDeadline(rs.getDate("deadline").toLocalDate());


        return archiveJobs;
    }
}
