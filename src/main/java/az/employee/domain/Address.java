package az.employee.domain;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Address extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = -6881662364964123865L;

    private Country country;
    private City city;
    private String info;


    public Address() {
        this.country = new Country();
        this.city = new City();
        this.info = "";
    }


    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Address{" +
                "  id=" + id +
                ", country=" + country +
                ", city=" + city +
                ", info='" + info + '\'' +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
