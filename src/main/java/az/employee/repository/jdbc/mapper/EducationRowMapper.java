package az.employee.repository.jdbc.mapper;

import az.employee.domain.Education;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class EducationRowMapper implements RowMapper<Education> {

    @Override
    public Education mapRow(ResultSet rs, int i) throws SQLException {
        Education education = new Education();
        education.setId((rs.getLong("id")));
        education.setCandidateId(rs.getLong("candidate_id"));
        education.getDegree().setId(rs.getLong("education_level_id"));
        education.getDegree().setName(rs.getString("edu_level_name"));
        education.setStartDate(rs.getDate("start_date").toLocalDate());
        if (rs.getDate("end_date").toLocalDate() != null) {
            education.setEndDate(rs.getDate("end_date").toLocalDate());
        }
        education.getCountry().setId(rs.getLong("country_id"));
        education.getCountry().setName(rs.getString("country_name"));
        if (rs.getLong("education_org_id") > 0L) {
            education.getEducationOrganization().setId(rs.getLong("education_org_id"));
            education.getEducationOrganization().setName(rs.getString("edu_org_name"));
        }
        if (rs.getString("education_org_name") != null) {
            education.setEducationOrganizationName(rs.getString("education_org_name"));
        }
        education.setGraduated(rs.getInt("graduated"));
        education.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            education.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        return education;
    }
}
