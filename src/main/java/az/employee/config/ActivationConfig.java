package az.employee.config;

import java.io.Serializable;

public class ActivationConfig implements Serializable {
    private String url;
    private String fromEmail;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getFromEmail() {
        return fromEmail;
    }

    public void setFromEmail(String fromEmail) {
        this.fromEmail = fromEmail;
    }

    @Override
    public String toString() {
        return "ActivationConfig{" +
                "url='" + url + '\'' +
                ", fromEmail='" + fromEmail + '\'' +
                '}';
    }
}
