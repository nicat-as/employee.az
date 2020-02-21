package az.employee.repository.jdbc.mapper;

import az.employee.domain.Application;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ApplicationRowMapper implements RowMapper<Application> {
    @Override
    public Application mapRow(ResultSet resultSet, int i) throws SQLException {

        Application application = new Application();

        application.setId(resultSet.getInt("id"));
        application.setCandidateId(resultSet.getInt("candidate_id"));
        application.setJobId(resultSet.getInt("job_id"));
        application.setName(resultSet.getString("name") + " " + resultSet.getString("surname"));
        application.setPosition(resultSet.getString("position"));
        application.setStatus(resultSet.getInt("status"));
        application.setEmail(resultSet.getString("email"));
        application.setApplicationDate(resultSet.getDate("application_date").toLocalDate());


        return application;
    }
}
