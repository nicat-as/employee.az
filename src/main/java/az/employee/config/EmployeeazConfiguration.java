package az.employee.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
@ConfigurationProperties(prefix = "employeeaz")
public class EmployeeazConfiguration {

    private String uploadDir;
    private String baseUrl;
    private ActivationConfig activation;
//    private String activationUrl;
//    private String activationFromEmail;
    private int candidatePageCount;
    private int companyPageCount;
    private int companyJobsPageCount;
    private int jobCount;
    private List<String> origins;
    private Map<String, Integer> counts;
    private List<SmsProvider> smsProviderList;
    private boolean sendNotifications;

    public boolean isSendNotifications() {
        return sendNotifications;
    }

    public void setSendNotifications(boolean sendNotifications) {
        this.sendNotifications = sendNotifications;
    }

    public List<SmsProvider> getSmsProviderList() {
        return smsProviderList;
    }

    public void setSmsProviderList(List<SmsProvider> smsProviderList) {
        this.smsProviderList = smsProviderList;
    }

    public Map<String, Integer> getCounts() {
        return counts;
    }

    public void setCounts(Map<String, Integer> counts) {
        this.counts = counts;
    }

    public List<String> getOrigins() {
        return origins;
    }

    public void setOrigins(List<String> origins) {
        this.origins = origins;
    }




    public String getUploadDir() {
        return uploadDir;
    }

    public void setUploadDir(String uploadDir) {
        this.uploadDir = uploadDir;
    }

    public String getBaseUrl() {
        return baseUrl;
    }

    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    public ActivationConfig getActivation() {
        return activation;
    }

    public void setActivation(ActivationConfig activation) {
        this.activation = activation;
    }

    public int getCandidatePageCount() {
        return candidatePageCount;
//        return counts.get("candidatePageCount");
    }

    public void setCandidatePageCount(int candidatePageCount) {
        this.candidatePageCount = candidatePageCount;
    }

    public int getCompanyPageCount() {
        return companyPageCount;
    }

    public void setCompanyPageCount(int companyPageCount) {
        this.companyPageCount = companyPageCount;
    }

    public int getCompanyJobsPageCount() {
        return companyJobsPageCount;
    }

    public void setCompanyJobsPageCount(int companyJobsPageCount) {
        this.companyJobsPageCount = companyJobsPageCount;
    }

    public int getJobCount() {
        return jobCount;
    }

    public void setJobCount(int jobCount) {
        this.jobCount = jobCount;
    }

    @Override
    public String toString() {
        return "EmployeeazConfiguration{" +
                "uploadDir='" + uploadDir + '\'' +
                ", baseUrl='" + baseUrl + '\'' +
                ", activation=" + activation +
                ", candidatePageCount=" + candidatePageCount +
                ", companyPageCount=" + companyPageCount +
                ", companyJobsPageCount=" + companyJobsPageCount +
                ", jobCount=" + jobCount +
                ", origins=" + origins +
                ", counts=" + counts +
                ", smsProviderList=" + smsProviderList +
                ", sendNotifications=" + sendNotifications +
                '}';
    }
}
