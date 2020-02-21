package az.employee.domain;

import java.io.Serializable;

public class Language extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 1500467513075130336L;
    private String name;

    public Language() {
        this.name = "";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Language{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
