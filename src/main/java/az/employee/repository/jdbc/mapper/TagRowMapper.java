package az.employee.repository.jdbc.mapper;

import az.employee.domain.Tag;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class TagRowMapper implements RowMapper<Tag> {
    @Override
    public Tag mapRow(ResultSet rs, int i) throws SQLException {
        Tag tag = new Tag();
        tag.setId(rs.getLong("id"));
        tag.setName(rs.getString("name"));

        if (rs.getTimestamp("idate") != null) {
            tag.setLastUpdate(rs.getTimestamp("idate").toLocalDateTime());
        }
        if (rs.getTimestamp("udate") != null) {
            tag.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }
        return tag;
    }
}
