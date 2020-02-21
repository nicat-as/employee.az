package az.employee.service.impl;

import az.employee.domain.Certificate;
import az.employee.repository.CertificateRepository;
import az.employee.service.CertificateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class CertificateServiceImpl implements CertificateService {

    @Autowired
    private CertificateRepository certificateRepository;

    @Transactional
    @Override
    public Certificate addCertificate(Certificate certificate) {
        return certificateRepository.addCertificate(certificate);
    }

    @Override
    public Optional<Certificate> getCertificateById(long certificateId) {
        return certificateRepository.getCertificateById(certificateId);
    }

    @Transactional
    @Override
    public Certificate updateCertificate(Certificate certificate) {
        return certificateRepository.updateCertificate(certificate);
    }

    @Transactional
    @Override
    public void deleteCertificate(long certificateId) {
        certificateRepository.deleteCertificate(certificateId);
    }

    @Override
    public List<Certificate> getCertificateList(long candidateId) {
        return certificateRepository.getCertificateList(candidateId);
    }


}
