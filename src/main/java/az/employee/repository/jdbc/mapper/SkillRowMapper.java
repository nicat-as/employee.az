package az.employee.repository.jdbc.mapper;

import az.employee.domain.Skill;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class SkillRowMapper implements RowMapper<Skill> {
    @Override
    public Skill mapRow(ResultSet rs, int i) throws SQLException {

        Skill skill = new Skill();
        skill.setId(rs.getLong("id"));
        skill.setCandidateId(rs.getLong("candidate_id"));
        skill.setName(rs.getString("name"));
        skill.setLevel(rs.getInt("level"));
        skill.setInfo(rs.getString("info"));
        skill.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            skill.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        return skill;
    }
}
