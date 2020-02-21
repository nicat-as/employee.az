package az.employee.repository.jdbc.mapper;

import az.employee.domain.User;
import az.employee.domain.UserStatus;
import az.employee.domain.Role;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class UserRowMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet rs, int i) throws SQLException {

        User user = new User();
        user.setId(rs.getLong("id"));

        user.setName(rs.getString("name"));
        user.setSurname(rs.getString("surname"));
        user.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            user.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }
        user.setStatus(UserStatus.fromStatus(rs.getInt("user_status_id")));
        user.setEmail(rs.getString("email"));
        user.setPassword(rs.getString("password"));


        return user;
    }
}
