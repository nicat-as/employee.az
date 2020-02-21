package az.employee.designpatterns.creational.abstractfactory;

public interface GuiComponentFactory {
    Button createButton();
    TextBox createTextBox();
    Select createSelect();
}
