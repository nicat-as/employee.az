package az.employee.domain;

import java.io.Serializable;

public class EducationLevel extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -2735863491419012583L;

    private String name;

    public EducationLevel() {
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
        return "EducationLevel{" +
                "  id=" + id +
                ", name='" + name + '\'' +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
