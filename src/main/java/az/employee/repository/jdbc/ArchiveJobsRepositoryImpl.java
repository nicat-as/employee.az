package az.employee.repository.jdbc;

import az.employee.domain.ArchiveJobs;
import az.employee.repository.ArchiveJobsRepository;
import az.employee.repository.jdbc.mapper.ArchiveJobsRowMapper;
import az.employee.repository.jdbc.mapper.ArchiveRMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class ArchiveJobsRepositoryImpl implements ArchiveJobsRepository {

    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    private ArchiveJobsRowMapper archiveJobsRowMapper;

    @Autowired
    private ArchiveRMapper archiveRMapper;

    @Override
    public List<ArchiveJobs> getArchiveListJobsListWithPaging(String sql, int start, int length, String filter,long userId) {

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();
        mapSqlParameterSource.addValue("user_id", userId);
        mapSqlParameterSource.addValue("start", start);
        mapSqlParameterSource.addValue("length", length);
        mapSqlParameterSource.addValue("filter", "%" + filter + "%");

         List<ArchiveJobs> archiveJobsList = namedParameterJdbcTemplate.query(sql, mapSqlParameterSource, archiveJobsRowMapper);

        return archiveJobsList;
    }

    @Override
    public long getDataCount(long userId) {

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();
        mapSqlParameterSource.addValue("user_id", userId);

        return namedParameterJdbcTemplate.queryForObject(SqlQueryForArchiveJobs.GET_DATA_COUNT, mapSqlParameterSource, Long.class);
    }

    public long getFilteredDataCount(long userId, String filter){

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();
        mapSqlParameterSource.addValue("user_id", userId);
        mapSqlParameterSource.addValue("filter", "%" + filter + "%");

        return namedParameterJdbcTemplate.queryForObject(SqlQueryForArchiveJobs.GET_FILTERED_DATA_COUNT, mapSqlParameterSource, Long.class);
    }

    @Override
    public Optional<ArchiveJobs> getArchiveJobsById(long organizationId) {

        Optional<ArchiveJobs> optionalArchiveJobs = Optional.empty();

        MapSqlParameterSource mapSqlParameterSource = new MapSqlParameterSource();
        mapSqlParameterSource.addValue("organization_id", organizationId);
        List<ArchiveJobs> archiveJobsList = namedParameterJdbcTemplate.query(SqlQueryForArchiveJobs.GET_ARCHIVE_JOBS_BY_ID, mapSqlParameterSource, archiveRMapper);
        if (!archiveJobsList.isEmpty()){
            optionalArchiveJobs = Optional.of(archiveJobsList.get(0));
        }
        return optionalArchiveJobs;
    }

}
