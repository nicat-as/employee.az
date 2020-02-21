package az.employee.repository.jdbc;

import az.employee.domain.*;
import az.employee.repository.CommonRepository;
import az.employee.repository.jdbc.sql.SqlQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CommonRepositoryJdbcImpl implements CommonRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Override
    public List<Country> getCountryList() {
        return jdbcTemplate.query(SqlQuery.GET_COUNTRY_LIST, new MapSqlParameterSource(), (rs, i) -> {
            Country country = new Country();
            country.setId(rs.getLong("id"));
            country.setName(rs.getString("name"));
            country.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
            if (rs.getTimestamp("udate") != null) {
                country.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            return country;
        });
    }

    @Override
    public List<City> getCityListByCountryId(long countryId) {
        return jdbcTemplate.query(SqlQuery.GET_CITY_LIST_BY_COUNTRY_ID,
                new MapSqlParameterSource("country_id", countryId), (rs, i) -> {
                    City city = new City();
                    city.setId(rs.getLong("id"));
                    city.setName(rs.getString("name"));
                    city.setCountryId(rs.getLong("country_id"));
                    city.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
                    if (rs.getTimestamp("udate") != null) {
                        city.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
                    }

                    return city;
                });
    }

    @Override
    public List<EducationOrganization> getEducationOrganizationList() {
        return jdbcTemplate.query(SqlQuery.GET_EDUCATION_ORGANIZATION_LIST, new MapSqlParameterSource(), (rs, i) -> {
            EducationOrganization educationOrganization = new EducationOrganization();
            educationOrganization.setId(rs.getLong("id"));
            educationOrganization.setName(rs.getString("name"));
            educationOrganization.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
            if (rs.getTimestamp("udate") != null) {
                educationOrganization.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            return educationOrganization;
        });
    }

    @Override
    public List<EducationLevel> getEducationLevelList() {
        return jdbcTemplate.query(SqlQuery.GET_EDUCATION_LEVEL_LIST, new MapSqlParameterSource(), (rs, i) -> {
            EducationLevel educationLevel = new EducationLevel();
            educationLevel.setId(rs.getLong("id"));
            educationLevel.setName(rs.getString("name"));
            educationLevel.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
            if (rs.getTimestamp("udate") != null) {
                educationLevel.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            return educationLevel;
        });
    }

    @Override
    public List<Language> getLanguageList() {
        return jdbcTemplate.query(SqlQuery.GET_LANGUAGE_LIST, new MapSqlParameterSource(), (rs, i) -> {
            Language language = new Language();
            language.setId(rs.getLong("id"));
            language.setName(rs.getString("name"));
            language.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
            if (rs.getTimestamp("udate") != null) {
                language.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            return language;
        });
    }
}
