package az.employee.repository;

import az.employee.domain.Certificate;

import java.util.List;
import java.util.Optional;

public interface CertificateRepository {

    Certificate addCertificate(Certificate certificate);

    Optional<Certificate> getCertificateById(long certificateId);

    Certificate updateCertificate(Certificate certificate);

    void deleteCertificate(long certificateId);

    List<Certificate> getCertificateList(long candidateId);
}
