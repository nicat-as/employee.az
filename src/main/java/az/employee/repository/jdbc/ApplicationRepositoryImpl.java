package az.employee.repository.jdbc;

import az.employee.domain.Application;
import az.employee.repository.ApplicationRespository;
import az.employee.repository.jdbc.mapper.ApplicationRowMapper;
import az.employee.repository.jdbc.sql.ApplicationQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class ApplicationRepositoryImpl implements ApplicationRespository {

    @Autowired
    NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    ApplicationRowMapper applicationRowMapper;

    @Override
    public Optional<Application> getApplicationById(int id) {
        return Optional.empty();
    }

    @Override
    public List<Application> getApplicationListWithPaging(String sql, int start, int length, String filter, long userId) {


        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("filter", "%" + filter + "%")
                .addValue("start", start)
                .addValue("length", length)
                .addValue("user_id", userId);

        return jdbcTemplate.query(sql, sqlParameterSource, applicationRowMapper);

    }

    @Override
    public long getApplicationCount(long userId) {

        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("user_id", userId);

        return jdbcTemplate.queryForObject(ApplicationQueries.GET_APPLICATION_COUNT, sqlParameterSource, Long.class);
    }

    @Override
    public long getFilteredApplicationCount(String filter, long userId) {

        SqlParameterSource sqlParameterSource = new MapSqlParameterSource()
                .addValue("user_id", userId)
                .addValue("filter", "%" + filter + "%");

        return jdbcTemplate.queryForObject(ApplicationQueries.GET_FILTERED_APPLICATION_COUNT, sqlParameterSource, Long.class);
    }
}
