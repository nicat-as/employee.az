package az.employee.designpatterns.creational.abstractfactory;

import az.employee.designpatterns.creational.abstractfactory.linux.LinuxGuiComponentFactory;
import az.employee.designpatterns.creational.abstractfactory.macosx.MacosxGuiComponentFactory;
import az.employee.designpatterns.creational.abstractfactory.windows.WindowsGuiComponentFactory;

import java.io.FileReader;
import java.util.Properties;

public class ConfigParser {

    private static String getOperatingSystem() throws Exception{
        Properties config = new Properties();
        config.load(new FileReader("application-config.properties"));
        return (String) config.get("os");
    }

    public static GuiComponentFactory createFactory() throws Exception {
        String os = getOperatingSystem();
        GuiComponentFactory factory = null;
        if(os.equals("windows")) {
            factory = new WindowsGuiComponentFactory();
        } else if(os.equals("linux")) {
            factory = new LinuxGuiComponentFactory();
        } else if(os.equals("macosx")){
            factory = new MacosxGuiComponentFactory();
        } else {
            throw new RuntimeException("Invalid operating system configuration " + os);
        }

        return factory;
    }
}
