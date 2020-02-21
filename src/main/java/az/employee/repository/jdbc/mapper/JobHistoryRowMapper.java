package az.employee.repository.jdbc.mapper;

import az.employee.domain.JobHistory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class JobHistoryRowMapper implements RowMapper<JobHistory> {

    @Override
    public JobHistory mapRow(ResultSet rs, int i) throws SQLException {
        JobHistory jobHistory = new JobHistory();
        jobHistory.setId(rs.getLong("id"));
        jobHistory.setCandidateId(rs.getLong("candidate_id"));
        jobHistory.setPosition(rs.getString("position"));
        jobHistory.setStartDate(rs.getDate("start_date").toLocalDate());
        if (rs.getDate("end_date") != null) {
            jobHistory.setEndDate(rs.getDate("end_date").toLocalDate());
        }

        jobHistory.getCountry().setId(rs.getLong("country_id"));
        jobHistory.getCountry().setName(rs.getString("country_name")
        );

        jobHistory.getCity().setId(rs.getLong("city_id"));
        jobHistory.getCity().setName(rs.getString("city_name"));

        jobHistory.setCompany(rs.getString("company"));
        jobHistory.setInfo(rs.getString("info"));
        jobHistory.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            jobHistory.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }
        return jobHistory;
    }
}
