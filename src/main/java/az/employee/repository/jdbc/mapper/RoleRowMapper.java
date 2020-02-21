package az.employee.repository.jdbc.mapper;

import az.employee.domain.Role;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class RoleRowMapper implements RowMapper<Role> {

    @Override
    public Role mapRow(ResultSet resultSet, int i) throws SQLException {
        Role role = Role.fromValue(resultSet.getInt("id"));
        role.setPage(resultSet.getString("page"));
        role.setPriority(resultSet.getInt("priority"));
        return role;
    }
}
