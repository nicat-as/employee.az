package az.employee.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.StringJoiner;

public class Certificate extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 4118155527111258774L;

    private long candidateId;
    private LocalDate certificateDate;
    private String title;
    private String organization;
    private String file;

    public Certificate() {
        this.candidateId = 0L;
        this.certificateDate = null;
        this.title = "";
        this.organization = "";
        this.file = "";
    }

    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public LocalDate getCertificateDate() {
        return certificateDate;
    }

    public void setCertificateDate(LocalDate certificateDate) {
        this.certificateDate = certificateDate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Certificate.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("candidateId=" + candidateId)
                .add("certificateDate=" + certificateDate)
                .add("title='" + title + "'")
                .add("organization='" + organization + "'")
                .add("file='" + file + "'")
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}
