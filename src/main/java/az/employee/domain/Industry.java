package az.employee.domain;

import java.io.Serializable;

public class Industry extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = 5717092593992322040L;

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Industry{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
