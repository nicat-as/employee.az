package az.employee.domain;

import java.io.Serializable;

public class JobCategory extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = -2843034964770665417L;

    private String name;
    private String icon;
    private long parent;

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public long getParent() {
        return parent;
    }

    public void setParent(long parent) {
        this.parent = parent;
    }

    public JobCategory() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
