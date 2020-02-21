package az.employee.repository.jdbc;

import az.employee.domain.Job;
import az.employee.domain.JobCategoryCount;
import az.employee.repository.JobRepository;
import az.employee.repository.jdbc.mapper.JobCategoryRowMapper;
import az.employee.repository.jdbc.mapper.JobRowMapper;
import az.employee.repository.jdbc.sql.JobQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public class JobRepositoryJdbcImpl implements JobRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private JobCategoryRowMapper jobCategoryRowMapper;

    @Autowired
    private JobRowMapper jobRowMapper;

    @Override
    public long getAllJobCount() {
        return jdbcTemplate.queryForObject(JobQueries.GET_ALL_JOB_COUNT,new MapSqlParameterSource(),Long.class);
    }

    @Override
    public List<JobCategoryCount> getJobCategoryCount() {
        return jdbcTemplate.query(JobQueries.GET_JOB_CATEGORY_COUNT,new MapSqlParameterSource(), jobCategoryRowMapper);
    }

    @Override
    public List<Job> getRecentJob() {
        return jdbcTemplate.query(JobQueries.GET_RECENT_JOB_LIST,new MapSqlParameterSource(),jobRowMapper);
    }

    @Override
    public Optional<Job> getJobById(long id) {
        Optional<Job> optionalJob = Optional.empty();
        MapSqlParameterSource params = new MapSqlParameterSource().addValue("job_id", id);
        List<Job> jobs = jdbcTemplate.query(JobQueries.GET_JOB_BY_ID, params, jobRowMapper);
        if(!jobs.isEmpty()) {
            optionalJob = Optional.of(jobs.get(0));
        }

        return optionalJob;
    }

    @Override
    public Job addJob(Job job) {
        System.out.println("add job = " + job);
        return job;
    }

    @Override
    public Job updateJob(Job job) {
        // todo update job
        System.out.println("update job");
        return job;
    }

    @Override
    public boolean deleteJobById(long jobId) {
        MapSqlParameterSource params = new MapSqlParameterSource("job_id", jobId);
        int count = jdbcTemplate.update(JobQueries.DELETE_JOB_BY_ID, params);
        System.out.println("delete job id = " + jobId + " count = " + count);
        return count == 1;
    }

    @Override
    public List<Job> getAllJobsPaging(int page) {
        String sql = String.format(JobQueries.GET_ALL_JOBS_PAGING,(page-1) * 8);
       return jdbcTemplate.query(sql,new MapSqlParameterSource(),jobRowMapper);
    }

    @Override
    public long getJobPageCount(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("company_id",id);
        return jdbcTemplate.queryForObject(JobQueries.GET_COMPANY_JOBS_COUNT_PAGE,params,Long.class);
    }

    @Override
    public long getPageCount() {
        return jdbcTemplate.queryForObject(JobQueries.GET_PAGE_COUNT_JOBS,new MapSqlParameterSource(),Long.class);
    }
}
