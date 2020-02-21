package az.employee.domain;

import java.io.Serializable;
import java.util.StringJoiner;

public class Tag extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = 7900462912358257177L;

    private String name;

    public Tag() {
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
        return new StringJoiner(", ", Tag.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}
