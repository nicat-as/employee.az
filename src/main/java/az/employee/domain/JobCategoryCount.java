package az.employee.domain;

public class JobCategoryCount {
    private long id;
    private String name;
    private String iconClass;
    private long count;


    public JobCategoryCount() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIconClass() {
        return iconClass;
    }

    public void setIconClass(String iconClass) {
        this.iconClass = iconClass;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "GetJobCategoryCount{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", iconClass='" + iconClass + '\'' +
                ", count=" + count +
                '}';
    }
}
