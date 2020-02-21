package az.employee.config;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class SmsProvider implements Serializable {

    private static final long serialVersionUID = 7097807748823194507L;
    private String url;
    private String login;
    private String password;
    private List<String> senders;

    public SmsProvider() {
        this.url = "";
        this.login = "";
        this.password = "";
        this.senders = new ArrayList<>();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getSenders() {
        return senders;
    }

    public void setSenders(List<String> senders) {
        this.senders = senders;
    }

    @Override
    public String toString() {
        return "SmsProvider{" +
                "url='" + url + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", senders=" + senders +
                '}';
    }
}
