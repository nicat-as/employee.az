package az.employee.repository.jdbc;

import az.employee.domain.Skill;
import az.employee.repository.SkillRepository;
import az.employee.repository.jdbc.mapper.SkillRowMapper;
import az.employee.repository.jdbc.sql.SkillQueries;
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
public class SkillRepositoryJdbcImpl implements SkillRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private SkillRowMapper skillRowMapper;

    @Override
    public Skill addSkill(Skill skill) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("candidate_id", skill.getCandidateId())
                .addValue("name", skill.getName())
                .addValue("level", skill.getLevel())
                .addValue("info", skill.getInfo());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(SkillQueries.ADD_SKILL, params, keyHolder);
        if (count > 0) {
            skill.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("skill not added, count = 0");
        }

        return skill;
    }

    @Override
    public Optional<Skill> getSkillById(long skillId) {
        Optional<Skill> optionalSkill = Optional.empty();
        List<Skill> skillList = jdbcTemplate.query(SkillQueries.GET_SKILL_BY_ID,
                new MapSqlParameterSource("skill_id", skillId),
                skillRowMapper);

        if (!skillList.isEmpty()) {
            optionalSkill = Optional.of(skillList.get(0));
        }

        return optionalSkill;
    }

    @Override
    public Skill updateSkill(Skill skill) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("skill_id", skill.getId())
                .addValue("name", skill.getName())
                .addValue("level", skill.getLevel())
                .addValue("info", skill.getInfo());

        int count = jdbcTemplate.update(SkillQueries.UPDATE_SKILL_BY_ID, params);
        if (count > 0) {
            // todo add logging
        } else {
            throw new RuntimeException("skill with id " + skill.getId() + " not updated");
        }

        return skill;
    }

    @Override
    public void deleteSkill(long skillId) {
        int count = jdbcTemplate.update(SkillQueries.DELETE_SKILL_BY_ID,
                new MapSqlParameterSource("skill_id", skillId));
        if (count == 0) {
            throw new RuntimeException("education with id " + skillId + " not deleted");
        }
    }

    @Override
    public List<Skill> getSkillList(long candidateId) {
        return jdbcTemplate.query(
                SkillQueries.GET_SKILL_LIST,
                new MapSqlParameterSource("candidate_id", candidateId),
                skillRowMapper);
    }
}
