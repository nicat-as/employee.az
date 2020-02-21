package az.employee.designpatterns.creational.factorymethod;

public class MainClass {

    public static void main(String[] args) {
        Database database = DatabaseManager.connect();
        System.out.println(database);
    }
}
