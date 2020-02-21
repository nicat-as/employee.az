package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.StringJoiner;

public class Country extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = -8985560325875778657L;

    private String name;

    public Country() {
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
        return new StringJoiner(", ", Country.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}
