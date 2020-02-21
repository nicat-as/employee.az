package az.employee.repository.jdbc;

import az.employee.domain.*;
import az.employee.repository.CandidateRepository;
import az.employee.repository.jdbc.mapper.*;
import az.employee.repository.jdbc.sql.CandidateQueries;
import az.employee.util.ColumnType;
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
public class CandidateRepositoryJdbcImpl implements CandidateRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private CandidateRowMapper candidateRowMapper;

    @Autowired
    private JobHistoryRowMapper jobHistoryRowMapper;

    @Autowired
    private EducationRowMapper educationRowMap;

    @Autowired
    private CertificateRowMapper certificateRowMapper;

    @Autowired
    private LanguageSkillRowMapper languageSkillRowMapper;

    @Autowired
    private SkillRowMapper skillRowMapper;

    @Autowired
    private TagRowMapper tagRowMapper;

    @Override
    public List<Candidate> getCandidateList(int page, int size) {
        return getCandidateList("", 1, "asc", (page - 1) * size, size);
    }

    @Override
    public List<Candidate> getCandidateList(String search, int column, String columnDir, int start, int length) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("search", "%" + search + "%");
        String sql = String.format(CandidateQueries.GET_CANDIDATE_LIST, ColumnType.fromColumn(column), columnDir, start, length);
        return jdbcTemplate.query(sql, params, candidateRowMapper);
    }

    @Override
    public long getCandidateCount() {
        return jdbcTemplate.queryForObject(
                CandidateQueries.GET_CANDIDATE_COUNT,
                new MapSqlParameterSource(),
                Long.class);
    }

    @Override
    public Optional<Candidate> getCandidateById(long id) {
        Optional<Candidate> optionalCandidate = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        List<Candidate> list = jdbcTemplate.query(CandidateQueries.GET_CANDIDATE_BY_ID, params, candidateRowMapper);
        if (!list.isEmpty()) {
            optionalCandidate = Optional.of(list.get(0));
        }

        return optionalCandidate;
    }

    @Override
    public Candidate addCandidate(Candidate candidate) {
        SqlParameterSource params = getCandidateParameters(candidate)
                .addValue("user_id", candidate.getUser().getId())
                .addValue("birth_date", candidate.getBirthDate())
                .addValue("address_id", candidate.getAddress().getId())
                .addValue("degree_id", candidate.getDegree().getId())
                .addValue("position", candidate.getPosition())
                .addValue("salary_min", candidate.getSalaryMin())
                .addValue("salary_max", candidate.getSalaryMax())
                .addValue("github", candidate.getGithub())
                .addValue("gitlab", candidate.getGitlab())
                .addValue("facebook", candidate.getFacebook())
                .addValue("twitter", candidate.getTwitter())
                .addValue("linkedin", candidate.getLinkedin())
                .addValue("instagram", candidate.getInstagram());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(CandidateQueries.ADD_CANDIDATE, params, keyHolder);

        if (count == 1) {
            candidate.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("Error adding candidate  " + candidate);
        }

        return candidate;
    }

    @Override
    public Candidate updateCandidate(Candidate candidate) {
        MapSqlParameterSource params = getCandidateParameters(candidate);
        params.addValue("id", candidate.getId());

        int count = jdbcTemplate.update(CandidateQueries.UPDATE_CANDIDATE, params);

        if (count == 0) {
            throw new RuntimeException("Error updating candidate id " + candidate.getId());
        }

        return candidate;
    }

    private MapSqlParameterSource getCandidateParameters(Candidate candidate) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("birth_date", candidate.getBirthDate());
        params.addValue("degree_id", candidate.getDegree().getId());
        params.addValue("position", candidate.getPosition());
        params.addValue("salary_min", candidate.getSalaryMin());
        params.addValue("salary_max", candidate.getSalaryMax());
        params.addValue("github", candidate.getGithub());
        params.addValue("gitlab", candidate.getGitlab());
        params.addValue("facebook", candidate.getFacebook());
        params.addValue("twitter", candidate.getTwitter());
        params.addValue("linkedin", candidate.getLinkedin());
        params.addValue("instagram", candidate.getInstagram());
        return params;
    }

    @Override
    public List<Tag> getTagList(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("candidate_id", id);
        return jdbcTemplate.query(CandidateQueries.GET_CANDIDATE_TAGS, params, tagRowMapper);
    }

    @Override
    public void updateImage(Candidate candidate) {
        MapSqlParameterSource params = new MapSqlParameterSource("image", candidate.getProfileImage())
                .addValue("id", candidate.getId());

        int count = jdbcTemplate.update(CandidateQueries.UPDATE_CANDIDATE_IMAGE, params);

        if (count == 0) {
            throw new RuntimeException("Error updating candidate image, id = " + candidate.getId());
        }
    }
}
