package az.employee.designpatterns.creational.abstractfactory;

import org.w3c.dom.Text;

public class Client {

    private GuiComponentFactory factory;

    public Client(GuiComponentFactory factory) {
        this.factory = factory;
    }

    public void createUI() {
        Button button = factory.createButton();
        TextBox textBox = factory.createTextBox();
        Select select = factory.createSelect();
        System.out.println("UI hazirlandi");
    }
}
