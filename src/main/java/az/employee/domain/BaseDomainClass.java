package az.employee.domain;


import java.io.Serializable;
import java.time.LocalDateTime;

public class BaseDomainClass implements Serializable {
    private static final long serialVersionUID = 2270746044668052149L;
    protected long id;
    protected LocalDateTime insertDate;
    protected LocalDateTime lastUpdate;

    public BaseDomainClass(long id) {
        this.id = id;
    }

    public BaseDomainClass() {
        this.id = 0L;
        this.insertDate = null;
        this.lastUpdate = null;
    }

    public LocalDateTime getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(LocalDateTime insertDate) {
        this.insertDate = insertDate;
    }

    public LocalDateTime getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(LocalDateTime lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "BaseDomainClass{" +
                "id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                '}';
    }
}
