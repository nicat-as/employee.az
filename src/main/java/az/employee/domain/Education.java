package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDate;

public class Education extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 7197913543047706135L;

    private long candidateId;
    private EducationLevel degree;
    private LocalDate startDate;
    private LocalDate endDate;
    private Country country;
    private EducationOrganization educationOrganization;
    private String educationOrganizationName;
    private int graduated;

    public Education() {
        this.candidateId = 0L;
        this.degree = new EducationLevel();
        this.startDate = null;
        this.endDate = null;
        this.country = new Country();
        this.educationOrganization = new EducationOrganization();
        this.educationOrganizationName = "";
        this.graduated = 0;
    }

    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public EducationLevel getDegree() {
        return degree;
    }

    public void setDegree(EducationLevel degree) {
        this.degree = degree;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public EducationOrganization getEducationOrganization() {
        return educationOrganization;
    }

    public void setEducationOrganization(EducationOrganization educationOrganization) {
        this.educationOrganization = educationOrganization;
    }

    public String getEducationOrganizationName() {
        return educationOrganizationName;
    }

    public void setEducationOrganizationName(String educationOrganizationName) {
        this.educationOrganizationName = educationOrganizationName;
    }

    public int getGraduated() {
        return graduated;
    }

    public void setGraduated(int graduated) {
        this.graduated = graduated;
    }

    @Override
    public String toString() {
        return "Education{" +
                "id=" + id +
                ", candidateId=" + candidateId +
                ", educationLevel=" + degree +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", country=" + country +
                ", educationOrganization=" + educationOrganization +
                ", educationOrganizationName='" + educationOrganizationName + '\'' +
                ", graduated=" + graduated +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
