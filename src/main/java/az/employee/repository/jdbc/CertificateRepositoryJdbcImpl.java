package az.employee.repository.jdbc;

import az.employee.domain.Certificate;
import az.employee.repository.CertificateRepository;
import az.employee.repository.jdbc.mapper.CertificateRowMapper;
import az.employee.repository.jdbc.sql.CertificateQueries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class CertificateRepositoryJdbcImpl implements CertificateRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private CertificateRowMapper certificateRowMapper;

    @Override
    public Certificate addCertificate(Certificate certificate) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("candidate_id", certificate.getCandidateId())
                .addValue("certificate_date", certificate.getCertificateDate())
                .addValue("title", certificate.getTitle())
                .addValue("organization", certificate.getOrganization())
                .addValue("file", certificate.getFile());

        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(CertificateQueries.ADD_CERTIFICATE, params, keyHolder);
        if (count > 0) {
            certificate.setId(keyHolder.getKey().longValue());
        } else {
            throw new RuntimeException("certificate not added, count = 0");
        }

        return certificate;
    }

    @Override
    public Optional<Certificate> getCertificateById(long certificateId) {
        Optional<Certificate> optionalCertificate = Optional.empty();
        List<Certificate> certificateList = jdbcTemplate.query(CertificateQueries.GET_CERTIFICATE_BY_ID,
                new MapSqlParameterSource("certificate_id", certificateId), certificateRowMapper);

        if (!certificateList.isEmpty()) {
            optionalCertificate = Optional.of(certificateList.get(0));
        }

        return optionalCertificate;
    }

    @Override
    public Certificate updateCertificate(Certificate certificate) {
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("certificate_id", certificate.getId())
                .addValue("certificate_date", certificate.getCertificateDate())
                .addValue("title", certificate.getTitle())
                .addValue("organization", certificate.getOrganization())
                .addValue("file", certificate.getFile());

        int count = jdbcTemplate.update(CertificateQueries.UPDATE_CERTIFICATE_BY_ID, params);
        if (count > 0) {
            // todo add logging
        } else {
            throw new RuntimeException("Job History with id " + certificate.getId() + " not updated");
        }

        return certificate;
    }

    @Override
    public void deleteCertificate(long certificateId) {
        int count = jdbcTemplate.update(CertificateQueries.DELETE_CERTIFICATE_BY_ID,
                new MapSqlParameterSource("certificate_id", certificateId));
        if (count == 0) {
            throw new RuntimeException("certificate with id " + certificateId + " not deleted");
        }
    }

    @Override
    public List<Certificate> getCertificateList(long candidateId) {
        return jdbcTemplate.query(
                CertificateQueries.GET_CERTIFICATE_LIST,
                new MapSqlParameterSource("candidate_id", candidateId),
                certificateRowMapper);
    }
}
