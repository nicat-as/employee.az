package az.employee.domain;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Candidate extends BaseDomainClass {
    private static final long serialVersionUID = 422170214390401603L;
    private User user;
    private String profileImage;
    private String videoFile;
    private Address address;
    private LocalDate birthDate;
    private EducationLevel degree;
    private String position;
    private BigDecimal salaryMin;
    private BigDecimal salaryMax;
    private List<Education> educationList;
    private List<JobHistory> jobHistoryList;
    private List<Certificate> certificateList;
    private List<LanguageSkill> languageSkillList;
    private List<Skill> skillList;
    private List<Tag> tagList;
    private String github;
    private String facebook;
    private String twitter;
    private String linkedin;
    private String instagram;
    private String gitlab;

    public Candidate() {
        this.user = new User();
        this.user.getRoleList().add(Role.CANDIDATE);
        this.profileImage = "";
        this.videoFile = "";
        this.address = new Address();
        this.birthDate = null;
        this.degree = new EducationLevel();
        this.educationList = new ArrayList<>();
        this.jobHistoryList = new ArrayList<>();
        this.certificateList = new ArrayList<>();
        this.languageSkillList = new ArrayList<>();
        this.skillList = new ArrayList<>();
        this.tagList = new ArrayList<>();
        this.github = "";
        this.facebook = "";
        this.twitter = "";
        this.linkedin = "";
        this.instagram = "";
        this.gitlab = "";

    }

    public List<Skill> getSkillList() {
        return skillList;
    }

    public void setSkillList(List<Skill> skillList) {
        this.skillList = skillList;
    }

    public List<Tag> getTagList() {
        return tagList;
    }

    public void setTagList(List<Tag> tagList) {
        this.tagList = tagList;
    }

    public String getGitlab() {
        return gitlab;
    }

    public void setGitlab(String gitlab) {
        this.gitlab = gitlab;
    }

    public List<JobHistory> getJobHistoryList() {
        return jobHistoryList;
    }

    public void setJobHistoryList(List<JobHistory> jobHistoryList) {
        this.jobHistoryList = jobHistoryList;
    }

    public List<Certificate> getCertificateList() {
        return certificateList;
    }

    public void setCertificateList(List<Certificate> certificateList) {
        this.certificateList = certificateList;
    }

    public List<LanguageSkill> getLanguageSkillList() {
        return languageSkillList;
    }

    public void setLanguageSkillList(List<LanguageSkill> languageSkillList) {
        this.languageSkillList = languageSkillList;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public List<Education> getEducationList() {
        return educationList;
    }

    public void setEducationList(List<Education> educationList) {
        this.educationList = educationList;
    }



    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getVideoFile() {
        return videoFile;
    }

    public void setVideoFile(String videoFile) {
        this.videoFile = videoFile;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public EducationLevel getDegree() {
        return degree;
    }

    public void setDegree(EducationLevel degree) {
        this.degree = degree;
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

    @Override
    public String toString() {
        return "Candidate{" +
                "user=" + user +
                ", profileImage='" + profileImage + '\'' +
                ", videoFile='" + videoFile + '\'' +
                ", address=" + address +
                ", birthDate=" + birthDate +
                ", degree=" + degree +
                ", position='" + position + '\'' +
                ", salaryMin=" + salaryMin +
                ", salaryMax=" + salaryMax +
                ", education=" + educationList +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
