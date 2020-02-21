package az.employee.repository.jdbc;

import az.employee.domain.Address;
import az.employee.repository.AddressRepository;
import az.employee.repository.jdbc.sql.AddressQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

@Repository
public class AddressRepositoryJdbcImpl implements AddressRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Override
    public Address addAddress(Address address) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("country_id", address.getCountry().getId());
        params.addValue("city_id", address.getCity().getId());
        params.addValue("info", address.getInfo());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(AddressQueries.ADD_ADDRESS, params, keyHolder);

        if(count == 1) {
            address.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("Error adding address " + address);
        }

        return address;
    }

    @Override
    public Address updateAddress(Address address) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", address.getId());
        params.addValue("country_id", address.getCountry().getId());
        params.addValue("city_id", address.getCity().getId());
        params.addValue("info", address.getInfo());

        int count = jdbcTemplate.update(AddressQueries.UPDATE_ADDRESS, params);

        if(count == 0) {
            throw new RuntimeException("Error updating address " + address);
        }
        return address;
    }

    @Override
    public void deleteAddress(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("id", id);

        int count = jdbcTemplate.update(AddressQueries.DELETE_ADDRESS, params);

        if(count == 0) {
            throw new RuntimeException("Error deleting address id " + id);
        }
    }
}
