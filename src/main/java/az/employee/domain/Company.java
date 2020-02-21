package az.employee.domain;

import java.io.Serializable;
import java.math.BigDecimal;

public class Company extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -431405831252329652L;
    private String name;
    private Industry industry;
    private String headOffice;
    private String createDate;
    private long numOfEmployee;
    private BigDecimal annualRevenue;
    private boolean global;
    private int rating;
    private String about;
    private String mobile;
    private String phone;
    private String website;
    private String email;
    private String facebook;
    private String twitter;
    private String linkedin;
    private String instagram;
    private int count;
    private Address address;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Company() {
        this.name = "";
        this.industry = new Industry();
        this.headOffice = "";
        this.createDate = "";
        this.numOfEmployee = 0;
        this.annualRevenue = null;
        this.global = false;
        this.rating = 0;
        this.about = "";
        this.mobile = "";
        this.website = "";
        this.email = "";
        this.facebook = "";
        this.twitter = "";
        this.linkedin = "";
        this.instagram = "";
        this.count = 0;
        this.address = new Address();
    }

    public boolean isGlobal() {
        return global;
    }

    public void setGlobal(boolean global) {
        this.global = global;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Industry getIndustry() {
        return industry;
    }

    public void setIndustry(Industry industry) {
        this.industry = industry;
    }


    public String getHeadOffice() {
        return headOffice;
    }

    public void setHeadOffice(String headOffice) {
        this.headOffice = headOffice;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public long getNumOfEmployee() {
        return numOfEmployee;
    }

    public void setNumOfEmployee(long numOfEmployee) {
        this.numOfEmployee = numOfEmployee;
    }

    public BigDecimal getAnnualRevenue() {
        return annualRevenue;
    }

    public void setAnnualRevenue(BigDecimal annualRevenue) {
        this.annualRevenue = annualRevenue;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "Company{" +
                "name='" + name + '\'' +
                ", industry=" + industry +
                ", headOffice='" + headOffice + '\'' +
                ", createDate='" + createDate + '\'' +
                ", numOfEmployee=" + numOfEmployee +
                ", annualRevenue=" + annualRevenue +
                ", isGlobal=" + global +
                ", rating=" + rating +
                ", about='" + about + '\'' +
                ", mobile='" + mobile + '\'' +
                ", website='" + website + '\'' +
                ", email='" + email + '\'' +
                ", facebook='" + facebook + '\'' +
                ", twitter='" + twitter + '\'' +
                ", linkedin='" + linkedin + '\'' +
                ", instagram='" + instagram + '\'' +
                ", count=" + count +
                ", address=" + address +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
