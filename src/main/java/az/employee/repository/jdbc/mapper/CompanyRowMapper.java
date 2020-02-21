package az.employee.repository.jdbc.mapper;

import az.employee.domain.Company;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CompanyRowMapper implements RowMapper<Company> {
    @Override
    public Company mapRow(ResultSet rs, int i) throws SQLException {
        Company company = new Company();

        company.setId(rs.getLong("id"));
        company.setName(rs.getString("name"));
        company.getIndustry().setId(rs.getLong("industry_id"));
        company.getIndustry().setName(rs.getString("industry_name"));
        company.setHeadOffice(rs.getString("head_office"));
        company.setCreateDate(rs.getString("create_date"));
        company.setNumOfEmployee(rs.getLong("num_of_employee"));
        company.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());

        if (rs.getDate("udate") != null) {
            company.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        company.setAnnualRevenue(rs.getBigDecimal("annual_revenue"));
        company.setGlobal(rs.getInt("is_global") == 1);
        company.setRating(rs.getInt("rating"));
        company.setAbout(rs.getString("about"));
        company.setMobile(rs.getString("mobile"));
        company.setWebsite(rs.getString("website"));
        company.setEmail(rs.getString("email"));
        company.setFacebook(rs.getString("facebook"));
        company.setTwitter(rs.getString("twitter"));
        company.setLinkedin(rs.getString("linkedin"));
        company.setInstagram(rs.getString("instagram"));
        company.setCount(rs.getInt("count"));

        return company;
    }

}
