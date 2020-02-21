package az.employee.designpatterns.creational.abstractfactory.linux;

import az.employee.designpatterns.creational.abstractfactory.Button;
import az.employee.designpatterns.creational.abstractfactory.GuiComponentFactory;
import az.employee.designpatterns.creational.abstractfactory.Select;
import az.employee.designpatterns.creational.abstractfactory.TextBox;

public class LinuxGuiComponentFactory implements GuiComponentFactory {
    @Override
    public Button createButton() {
        return new LinuxButton();
    }

    @Override
    public TextBox createTextBox() {
        return new LinuxTextBox();
    }

    @Override
    public Select createSelect() {
        return new LinuxSelect();
    }
}
