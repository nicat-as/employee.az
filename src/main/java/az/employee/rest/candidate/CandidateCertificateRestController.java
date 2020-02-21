package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.Certificate;
import az.employee.service.CandidateService;
import az.employee.service.CertificateService;
import az.employee.service.FileStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@RequestMapping("/rest/candidates/")
@RestController
public class CandidateCertificateRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private CertificateService certificateService;

    @Autowired
    private FileStorageService fileStorageService;

    @GetMapping(value = {"/{candidateId}/certificates", "/{candidateId}/certificates/"})
    public List<Certificate> getCertificateList(
            @PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            return certificateService.getCertificateList(candidateId);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @GetMapping(value = {"/{candidateId}/certificates/{certificateId}", "/{candidateId}/certificates/{certificateId}/"})
    public Certificate getCertificateById(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "certificateId") long certificateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Certificate> optionalCertificate = certificateService.getCertificateById(certificateId);
            if (optionalCertificate.isPresent()) {
                Certificate certificate = optionalCertificate.get();
                if (certificate.getCandidateId() == candidateId) {
                    return certificate;
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            "certificate with id " + certificateId + " does not belong to candidate " + candidateId);
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("certificate with id %d not found", certificateId));
            }

        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @PostMapping(value = {"/{candidateId}/certificates", "/{candidateId}/certificates/"})
    public Certificate addCertificate(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestParam(name = "certificateDate")
            @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate certificateDate,
            @RequestParam(name = "title") String title,
            @RequestParam(name = "organization") String organization,
            @RequestParam(name = "file") MultipartFile file) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Certificate certificate = new Certificate();
            String fileLocation = fileStorageService.saveFile(candidateId, file);
            certificate.setCandidateId(candidateId);
            certificate.setCertificateDate(certificateDate);
            certificate.setTitle(title);
            certificate.setOrganization(organization);
            certificate.setFile(fileLocation);

            return certificateService.addCertificate(certificate);
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate id %d not found", candidateId));
        }
    }

    @PutMapping(value = {"/{candidateId}/certificates/{certificateId}", "/{candidateId}/certificates/{certificateId}/"})
    public Certificate updateCertificate(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "certificateId") long certificateId,
            @RequestBody Certificate certificate) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            Optional<Certificate> optionalCertificate = certificateService.getCertificateById(certificateId);
            if (optionalCertificate.isPresent()) {
                Certificate certificateFromDB = optionalCertificate.get();
                if (certificateFromDB.getCandidateId() == candidateId) {
                    certificate.setId(certificateId);
                    certificate.setCandidateId(candidateId);
                    return certificateService.updateCertificate(certificate);
                } else {
                    throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                            String.format("certificate with id %d does not belong candidate with id %d", certificateId, candidateId));
                }
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                        String.format("certificate with id %d not found", certificateId));
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }

    @DeleteMapping(value = {"/{candidateId}/certificates/{certificateId}", "/{candidateId}/certificates/{certificateId}/"})
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCertificate(
            @PathVariable(name = "candidateId") long candidateId,
            @PathVariable(name = "certificateId") long certificateId) {
        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            try {
                certificateService.deleteCertificate(certificateId);
            } catch (RuntimeException e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("candidate with id %d not found", candidateId));
        }
    }
}
