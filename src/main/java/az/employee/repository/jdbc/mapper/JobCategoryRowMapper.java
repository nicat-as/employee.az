package az.employee.repository.jdbc.mapper;

import az.employee.domain.JobCategoryCount;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;


@Component
public class JobCategoryRowMapper implements RowMapper<JobCategoryCount> {
    @Override
    public JobCategoryCount mapRow(ResultSet resultSet, int i) throws SQLException {
        JobCategoryCount jobCategoryCount = new JobCategoryCount();
        jobCategoryCount.setId(resultSet.getLong("jcb.id"));
        jobCategoryCount.setName(resultSet.getString("jcb.name"));
        jobCategoryCount.setIconClass(resultSet.getString("jcb.icon_class"));
        jobCategoryCount.setCount(resultSet.getLong("job_count"));
        return jobCategoryCount;
    }
}
