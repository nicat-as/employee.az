package az.employee.designpatterns.creational.abstractfactory.windows;

import az.employee.designpatterns.creational.abstractfactory.Button;
import az.employee.designpatterns.creational.abstractfactory.GuiComponentFactory;
import az.employee.designpatterns.creational.abstractfactory.Select;
import az.employee.designpatterns.creational.abstractfactory.TextBox;

public class WindowsGuiComponentFactory implements GuiComponentFactory {

    @Override
    public Button createButton() {
        return new WindowsButton();
    }

    @Override
    public TextBox createTextBox() {
        return new WindowsTextBox();
    }

    @Override
    public Select createSelect() {
        return new WindowsSelect();
    }
}
