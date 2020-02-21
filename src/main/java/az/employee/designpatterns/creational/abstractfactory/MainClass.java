package az.employee.designpatterns.creational.abstractfactory;

public class MainClass {

    public static void main(String[] args) {
        try {
            GuiComponentFactory factory = ConfigParser.createFactory();
            Client client = new Client(factory);
            client.createUI();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
