package az.employee.repository.jdbc;

import az.employee.domain.JobHistory;
import az.employee.exception.ResourceDeleteException;
import az.employee.repository.JobHistoryRepository;
import az.employee.repository.jdbc.mapper.JobHistoryRowMapper;
import az.employee.repository.jdbc.sql.CandidateQueries;
import az.employee.repository.jdbc.sql.JobHistoryQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class JobHistoryRepositoryJdbcImpl implements JobHistoryRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private JobHistoryRowMapper jobHistoryRowMapper;

    @Override
    public JobHistory addJobHistory(JobHistory jobHistory) {
        MapSqlParameterSource params =
                new MapSqlParameterSource()
                        .addValue("candidate_id", jobHistory.getCandidateId())
                        .addValue("position", jobHistory.getPosition())
                        .addValue("company", jobHistory.getCompany())
                        .addValue("start_date", jobHistory.getStartDate())
                        .addValue("end_date", jobHistory.getEndDate())
                        .addValue("country_id", jobHistory.getCountry().getId())
                        .addValue("city_id", jobHistory.getCity().getId())
                        .addValue("info", jobHistory.getInfo());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(JobHistoryQueries.ADD_JOB_HISTORY, params, keyHolder);
        if (count > 0) {
            jobHistory.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("Job history not added, count = 0");
        }

        return jobHistory;
    }

    @Override
    public Optional<JobHistory> getJobHistoryById(long id) {
        Optional<JobHistory> optionalJobHistory = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource("job_history_id", id);
        List<JobHistory> jobHistoryList = jdbcTemplate.query(JobHistoryQueries.GET_JOB_HISTORY_BY_ID, params, jobHistoryRowMapper);
        if (!jobHistoryList.isEmpty()) {
            optionalJobHistory = Optional.of(jobHistoryList.get(0));
        }

        return optionalJobHistory;
    }

    @Override
    public JobHistory updateJobHistory(JobHistory jobHistory) {
        MapSqlParameterSource params =
                new MapSqlParameterSource()
                        .addValue("job_history_id", jobHistory.getId())
                        .addValue("start_date", jobHistory.getStartDate())
                        .addValue("end_date", jobHistory.getEndDate())
                        .addValue("company", jobHistory.getCompany())
                        .addValue("position", jobHistory.getPosition())
                        .addValue("country_id", jobHistory.getCountry().getId())
                        .addValue("city_id", jobHistory.getCity().getId())
                        .addValue("info", jobHistory.getInfo());

        int count = jdbcTemplate.update(JobHistoryQueries.UPDATE_JOB_HISTORY_BY_ID, params);
        if (count > 0) {
            // todo add logging
        } else {
            throw new RuntimeException("Job History with id " + jobHistory.getId() + " not updated");
        }

        return jobHistory;
    }

    @Override
    public void deleteJobHistory(long id) {
        int count = jdbcTemplate.update(JobHistoryQueries.DELETE_JOB_HISTORY_BY_ID,
                new MapSqlParameterSource("job_history_id", id));
        if (count == 0) {
            throw new ResourceDeleteException("Job history with id " + id + " not deleted", id);
        }
    }

    @Override
    public List<JobHistory> getJobHistoryList(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(JobHistoryQueries.GET_CANDIDATE_JOB_HISTORY_LIST, params, jobHistoryRowMapper);
    }
}
