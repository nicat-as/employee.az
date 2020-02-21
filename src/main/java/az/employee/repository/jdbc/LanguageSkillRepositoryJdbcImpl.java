package az.employee.repository.jdbc;

import az.employee.domain.LanguageSkill;
import az.employee.repository.LanguageSkillRepository;
import az.employee.repository.jdbc.mapper.LanguageSkillRowMapper;
import az.employee.repository.jdbc.sql.LanguageSkillQueries;
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
public class LanguageSkillRepositoryJdbcImpl implements LanguageSkillRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private LanguageSkillRowMapper languageSkillRowMapper;

    @Override
    public LanguageSkill addLanguageSkill(LanguageSkill languageSkill) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("candidate_id", languageSkill.getCandidateId())
                .addValue("language_id", languageSkill.getLanguage().getId())
                .addValue("reading", languageSkill.getReading())
                .addValue("speaking", languageSkill.getSpeaking())
                .addValue("writing", languageSkill.getWriting())
                .addValue("listening", languageSkill.getListening());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(LanguageSkillQueries.ADD_LANGUAGE_SKILL, params, keyHolder);
        if (count > 0) {
            languageSkill.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("language skill not added, count = 0");
        }

        return languageSkill;
    }

    @Override
    public Optional<LanguageSkill> getLanguageSkillById(long languageSkillId) {
        Optional<LanguageSkill> optionalLanguageSkill = Optional.empty();
        List<LanguageSkill> languageSkillList = jdbcTemplate.query(
                LanguageSkillQueries.GET_LANGUAGE_SKILL_BY_ID,
                new MapSqlParameterSource("language_skill_id", languageSkillId),
                languageSkillRowMapper);
        if (!languageSkillList.isEmpty()) {
            optionalLanguageSkill = Optional.of(languageSkillList.get(0));
        }

        return optionalLanguageSkill;
    }

    @Override
    public LanguageSkill updateLanguageSkill(LanguageSkill languageSkill) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("language_skill_id", languageSkill.getId())
                .addValue("language_id", languageSkill.getLanguage().getId())
                .addValue("reading", languageSkill.getReading())
                .addValue("speaking", languageSkill.getSpeaking())
                .addValue("writing", languageSkill.getWriting())
                .addValue("listening", languageSkill.getListening());

        int count = jdbcTemplate.update(LanguageSkillQueries.UPDATE_LANGUAGE_SKILL_BY_ID, params);
        if (count > 0) {
            // todo add logging
        } else {
            throw new RuntimeException("language skill with id " + languageSkill.getId() + " not updated");
        }

        return languageSkill;
    }

    @Override
    public void deleteLanguageSkill(long languageSkillId) {
        int count = jdbcTemplate.update(LanguageSkillQueries.DELETE_LANGUAGE_SKILL_BY_ID,
                new MapSqlParameterSource("language_skill_id", languageSkillId));
        if (count == 0) {
            throw new RuntimeException("language skill with id " + languageSkillId + " not deleted");
        }
    }

    @Override
    public List<LanguageSkill> getLanguageSkillList(long candidateId) {
        return jdbcTemplate.query(
                LanguageSkillQueries.GET_LANGUAGE_SKILL_LIST,
                new MapSqlParameterSource("candidate_id", candidateId),
                languageSkillRowMapper);
    }
}
