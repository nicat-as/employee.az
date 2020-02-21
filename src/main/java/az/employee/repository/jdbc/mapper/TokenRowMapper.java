package az.employee.repository.jdbc.mapper;

import az.employee.domain.Token;
import az.employee.domain.User;
import az.employee.domain.UserStatus;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class TokenRowMapper implements RowMapper<Token> {


    @Override
    public Token mapRow(ResultSet rs, int i) throws SQLException {
        Token tokenObj = new Token();
        tokenObj.setId(rs.getLong("id"));
        tokenObj.setValue(rs.getString("value"));
        tokenObj.setGenerationDate(rs.getTimestamp("generation_date").toLocalDateTime());
        tokenObj.setExpireDate(rs.getTimestamp("expire_date").toLocalDateTime());
        tokenObj.setUsed(rs.getInt("used") == 1);

        User user = new User();
        user.setId(rs.getLong("user_id"));

        user.setName(rs.getString("name"));
        user.setSurname(rs.getString("surname"));
        user.setInsertDate(rs.getTimestamp("user_idate").toLocalDateTime());
        if (rs.getTimestamp("user_udate") != null) {
            user.setLastUpdate(rs.getTimestamp("user_udate").toLocalDateTime());
        }
        user.setStatus(UserStatus.fromStatus(rs.getInt("user_status_id")));
        user.setEmail(rs.getString("email"));
        user.setPassword(rs.getString("password"));
        tokenObj.setUser(user);
        tokenObj.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            tokenObj.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }
        return tokenObj;
    }
}
