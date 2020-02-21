package az.employee.repository.jdbc.mapper;

import az.employee.domain.LanguageSkill;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class LanguageSkillRowMapper implements RowMapper<LanguageSkill> {

    @Override
    public LanguageSkill mapRow(ResultSet rs, int i) throws SQLException {
        LanguageSkill languageSkill = new LanguageSkill();
        languageSkill.setId(rs.getLong("id"));
        languageSkill.setCandidateId(rs.getLong("candidate_id"));
        languageSkill.getLanguage().setId(rs.getLong("language_id"));
        languageSkill.getLanguage().setName(rs.getString("language_name"));
        languageSkill.setReading(rs.getInt("reading"));
        languageSkill.setSpeaking(rs.getInt("speaking"));
        languageSkill.setWriting(rs.getInt("writing"));
        languageSkill.setListening(rs.getInt("listening"));
        languageSkill.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            languageSkill.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        return languageSkill;
    }
}
