package az.employee.repository.jdbc.mapper;

import az.employee.domain.Certificate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class CertificateRowMapper implements RowMapper<Certificate> {
    @Override
    public Certificate mapRow(ResultSet rs, int i) throws SQLException {
        Certificate certificate = new Certificate();
        certificate.setId(rs.getLong("id"));
        certificate.setCandidateId(rs.getLong("candidate_id"));
        certificate.setCertificateDate(rs.getDate("certificate_date").toLocalDate());
        certificate.setTitle(rs.getString("title"));
        certificate.setOrganization(rs.getString("organization"));
        if (rs.getString("file") != null) {
            certificate.setFile(rs.getString("file"));
        }
        certificate.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
        if (rs.getTimestamp("udate") != null) {
            certificate.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        return certificate;
    }
}
