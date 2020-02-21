package az.employee.repository.jdbc.mapper;

import az.employee.domain.Job;
import az.employee.domain.JobType;
import az.employee.domain.Organization;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class JobRowMapper implements RowMapper<Job> {


    @Override
    public Job mapRow(ResultSet resultSet, int i) throws SQLException {
        Job job = new Job();
        job.setId(resultSet.getLong("id"));
        job.setPosition(resultSet.getString("j.position"));
        job.setAbout(resultSet.getString("j.about"));
        job.setRequirement(resultSet.getString("j.requirement"));

        if (resultSet.getBigDecimal("j.salary_min") != null) {
            job.setMinSalary(resultSet.getBigDecimal("j.salary_min"));
        }

        if (resultSet.getBigDecimal("j.salary_max") != null) {
            job.setMaxSalary(resultSet.getBigDecimal("j.salary_max"));
        }

        job.setPostDate(resultSet.getTimestamp("j.post_date").toLocalDateTime());

        if (resultSet.getDate("j.deadline").toLocalDate() != null) {
            job.setDeadline(resultSet.getDate("j.deadline").toLocalDate());
        }

        job.getAddress().setId(resultSet.getLong("j.address_id"));
        job.getAddress().getCountry().setId(resultSet.getLong("country_id"));
        job.getAddress().getCountry().setName(resultSet.getString("country_name"));
        job.getAddress().getCity().setId(resultSet.getLong("city_id"));
        job.getAddress().getCity().setName(resultSet.getString("city_name"));
        job.getAddress().setInfo(resultSet.getString("info"));
        job.setType(JobType.fromValue(resultSet.getInt("job_type_id")));

        if (resultSet.getInt("j.experience_min") > 0) {
            job.setMinExperience(resultSet.getInt("j.experience_min"));
        }

        if (resultSet.getInt("j.experience_max") > 0) {
            job.setMaxExperience(resultSet.getInt("j.experience_max"));
        }

        job.getCategory().setId(resultSet.getLong("j.job_category_id"));
        job.getCategory().setName(resultSet.getString("job_category_name"));

        job.setInsertDate(resultSet.getTimestamp("j.idate").toLocalDateTime());

        if(resultSet.getTimestamp("j.udate") != null) {
            job.setLastUpdate(resultSet.getTimestamp("j.udate").toLocalDateTime());
        }

        job.getUser().setId(resultSet.getLong("user_id"));
        job.getUser().setName(resultSet.getString("name"));
        job.getUser().setSurname(resultSet.getString("surname"));
        job.getUser().setEmail(resultSet.getString("email"));
        job.getUser().setPhone(resultSet.getString("phone"));
        job.getUser().setMobile(resultSet.getString("mobile"));

        if(resultSet.getLong("organization_id") > 0) {
            job.setOrganization(new Organization());
            job.getOrganization().setId(resultSet.getLong("organization_id"));
            job.getOrganization().setName(resultSet.getString("organization_name"));
            job.getOrganization().setEmail(resultSet.getString("org_email"));
            job.getOrganization().setPhone(resultSet.getString("org_phone"));
            job.getOrganization().setMobile(resultSet.getString("org_mobile"));
        }

        job.setPosition(resultSet.getString("position"));
        job.setAbout(resultSet.getString("about"));
        job.setRequirement(resultSet.getString("requirement"));
        job.setMinSalary(resultSet.getBigDecimal("salary_min"));
        job.setMaxSalary(resultSet.getBigDecimal("salary_max"));
        job.setDeadline(resultSet.getDate("deadline").toLocalDate());
        job.setPostDate(resultSet.getTimestamp("post_date").toLocalDateTime());
        job.getAddress().getCountry().setName(resultSet.getString("country_name"));
        job.getAddress().getCity().setName(resultSet.getString("city_name"));
        job.getCategory().setIcon(resultSet.getString("icon_class"));

        return job;
    }
}
