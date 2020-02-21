package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDate;

public class JobHistory extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -7483342635347140361L;

    private long candidateId;
    private String position;
    private LocalDate startDate;
    private LocalDate endDate;
    private Country country;
    private City city;
    private String company;
    private String info;

    public JobHistory() {
        this.country = new Country();
        this.city = new City();
    }


    public JobHistory(long id, long candidateId, String position, LocalDate startDate, LocalDate endDate, Country country, City city, String company, String info) {
        super(id);
        this.candidateId = candidateId;
        this.position = position;
        this.startDate = startDate;
        this.endDate = endDate;
        this.country = country;
        this.city = city;
        this.company = company;
        this.info = info;
    }

    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "JobHistory{" +
                "  id=" + id +
                ", candidate_id=" + candidateId +
                ", position='" + position + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", country=" + country +
                ", city=" + city +
                ", organization=" + company +
                ", info='" + info + '\'' +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
