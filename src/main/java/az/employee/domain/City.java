package az.employee.domain;

import java.io.Serializable;
import java.util.StringJoiner;

public class City extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = -258656115304468228L;

    private String name;
    private long countryId;

    public City() {
        this.name = "";
        this.countryId = 0L;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getCountryId() {
        return countryId;
    }

    public void setCountryId(long countryId) {
        this.countryId = countryId;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", City.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("countryId=" + countryId)
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}
