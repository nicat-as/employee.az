package az.employee.designpatterns.creational.abstractfactory.macosx;

import az.employee.designpatterns.creational.abstractfactory.Button;
import az.employee.designpatterns.creational.abstractfactory.GuiComponentFactory;
import az.employee.designpatterns.creational.abstractfactory.Select;
import az.employee.designpatterns.creational.abstractfactory.TextBox;

public class MacosxGuiComponentFactory implements GuiComponentFactory {

    @Override
    public Button createButton() {
        return new MacButton();
    }

    @Override
    public TextBox createTextBox() {
        return new MacTextBox();
    }

    @Override
    public Select createSelect() {
        return new MacSelect();
    }
}
