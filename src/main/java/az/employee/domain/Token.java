package az.employee.domain;

import java.time.LocalDateTime;

public class Token extends  BaseDomainClass{
    private String value;
    private LocalDateTime generationDate;
    private LocalDateTime expireDate;
    private boolean used;
    private User user;


    public Token() {
        this.value = "";
        this.generationDate = null;
        this.expireDate = null;
        this.used = false;
        this.user = null;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public LocalDateTime getGenerationDate() {
        return generationDate;
    }

    public void setGenerationDate(LocalDateTime generationDate) {
        this.generationDate = generationDate;
    }

    public LocalDateTime getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(LocalDateTime expireDate) {
        this.expireDate = expireDate;
    }

    public boolean isUsed() {
        return used;
    }

    public void setUsed(boolean used) {
        this.used = used;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
