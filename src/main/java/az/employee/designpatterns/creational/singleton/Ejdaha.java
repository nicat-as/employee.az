package az.employee.designpatterns.creational.singleton;

public class Ejdaha {
    private static Ejdaha ejdaha = new Ejdaha("Tepegoz"); // eager initialization

    private String name;

    private Ejdaha(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static Ejdaha getEjdaha() {
        return ejdaha;
    }

    public static Ejdaha getInstance() {
        return ejdaha;
    }

    @Override
    public String toString() {
        return "Ejdaha{" +
                "name='" + name + '\'' +
                '}';
    }
}
