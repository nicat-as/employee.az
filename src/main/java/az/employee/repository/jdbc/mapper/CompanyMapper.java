package az.employee.repository.jdbc.mapper;

import az.employee.domain.Company;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CompanyMapper implements RowMapper<Company> {
    @Override

    public Company mapRow(ResultSet resultSet, int i) throws SQLException {
        Company company = new Company();
        company.setId(resultSet.getLong("id"));
        company.setHeadOffice(resultSet.getString("head_office"));
        company.setName(resultSet.getString("orgname"));
        company.getIndustry().setName(resultSet.getString("indname"));
        company.setGlobal(resultSet.getInt("is_global") == 1);

        if (resultSet.getTimestamp("idate").toLocalDateTime() != null) {
            company.setInsertDate(resultSet.getTimestamp("idate").toLocalDateTime());
        }

        if (resultSet.getString("create_date") != null) {
            company.setCreateDate(resultSet.getString("create_date"));
        }
        if (resultSet.getLong("num_of_employee") != 0) {
            company.setNumOfEmployee(resultSet.getLong("num_of_employee"));
        }
        if (resultSet.getBigDecimal("annual_revenue") != null) {
            company.setAnnualRevenue(resultSet.getBigDecimal("annual_revenue"));
        }
        if (resultSet.getInt("rating") != 0) {
            company.setRating(resultSet.getInt("rating"));
        }
        company.setAbout(resultSet.getString("about"));

        if (resultSet.getString("mobile") != null) {
            company.setMobile(resultSet.getString("mobile"));
        }
        if (resultSet.getString("phone") != null) {
            company.setPhone(resultSet.getString("phone"));
        }
        if (resultSet.getString("website") != null) {
            company.setWebsite(resultSet.getString("website"));
        }
        if (resultSet.getString("email") != null) {
            company.setEmail(resultSet.getString("email"));
        }
        if (resultSet.getString("facebook") != null) {
            company.setFacebook(resultSet.getString("facebook"));
        }
        if (resultSet.getString("instagram") != null) {
            company.setInstagram(resultSet.getString("instagram"));
        }
        if (resultSet.getString("twitter") != null) {
            company.setTwitter(resultSet.getString("twitter"));
        }
        if (resultSet.getString("linkedin") != null) {
            company.setLinkedin(resultSet.getString("linkedin"));
        }
        if (resultSet.getString("udate") != null) {
            company.setLastUpdate(resultSet.getTimestamp("udate").toLocalDateTime());
        }
        return company;
    }
}
