package az.employee.domain;
import java.math.BigDecimal;
import java.time.LocalDate;

public class ArchiveJobs extends BaseDomainClass {

    private String position;
    private String userName;
    private String about;
    private String requirement;
    private BigDecimal salaryMin;
    private BigDecimal salaryMax;
    private LocalDate postDate;
    private LocalDate deadline;
    private String countryName;
    private String cityName;
    private String jobType;
    private int experienceMin;
    private int experienceMax;
    private String jobCategory;
    private String organizationName;
    private int premium;
    private User user;

    public ArchiveJobs() {
        this.position = "";
        this.userName = "";
        this.about = "";
        this.requirement = "";
        this.salaryMin = null;
        this.salaryMax = null;
        this.postDate = null;
        this.deadline = null;
        this.countryName = "";
        this.cityName = "";
        this.jobType = "";
        this.experienceMin = 0;
        this.experienceMax = 0;
        this.jobCategory = "";
        this.organizationName = "";
        this.premium = 0;
    }


    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public BigDecimal getSalaryMin() {
        return salaryMin;
    }

    public void setSalaryMin(BigDecimal salaryMin) {
        this.salaryMin = salaryMin;
    }

    public BigDecimal getSalaryMax() {
        return salaryMax;
    }

    public void setSalaryMax(BigDecimal salaryMax) {
        this.salaryMax = salaryMax;
    }

    public LocalDate getPostDate() {
        return postDate;
    }

    public void setPostDate(LocalDate postDate) {
        this.postDate = postDate;
    }

    public LocalDate getDeadline() {
        return deadline;
    }

    public void setDeadline(LocalDate deadline) {
        this.deadline = deadline;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public int getExperienceMin() {
        return experienceMin;
    }

    public void setExperienceMin(int experienceMin) {
        this.experienceMin = experienceMin;
    }

    public int getExperienceMax() {
        return experienceMax;
    }

    public void setExperienceMax(int experienceMax) {
        this.experienceMax = experienceMax;
    }

    public String getJobCategory() {
        return jobCategory;
    }

    public void setJobCategory(String jobCategory) {
        this.jobCategory = jobCategory;
    }

    public String getOrganizationName() {
        return organizationName;
    }

    public void setOrganizationName(String organizationName) {
        this.organizationName = organizationName;
    }

    public int getPremium() {
        return premium;
    }

    public void setPremium(int premium) {
        this.premium = premium;
    }

    @Override
    public String toString() {
        return "ArchiveJobs{" +
                "position='" + position + '\'' +
                ", userName='" + userName + '\'' +
                ", about='" + about + '\'' +
                ", requirement='" + requirement + '\'' +
                ", salaryMin=" + salaryMin +
                ", salaryMax=" + salaryMax +
                ", postDate=" + postDate +
                ", deadline=" + deadline +
                ", countryName='" + countryName + '\'' +
                ", cityName='" + cityName + '\'' +
                ", jobType='" + jobType + '\'' +
                ", experienceMin=" + experienceMin +
                ", experienceMax=" + experienceMax +
                ", jobCategory='" + jobCategory + '\'' +
                ", organizationName='" + organizationName + '\'' +
                ", premium=" + premium +
                ", user=" + user +
                '}';
    }
}
