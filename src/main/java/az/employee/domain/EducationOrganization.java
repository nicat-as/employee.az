package az.employee.domain;

import java.io.Serializable;

public class EducationOrganization extends BaseDomainClass implements Serializable {
    private static final long serialVersionUID = -4073873792242690947L;
    private String name;

    public EducationOrganization() {
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
        return "EducationOrganization{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
