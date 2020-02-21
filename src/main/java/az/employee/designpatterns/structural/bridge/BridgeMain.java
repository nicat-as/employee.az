package az.employee.designpatterns.structural.bridge;

import az.employee.designpatterns.structural.bridge.device.Device;
import az.employee.designpatterns.structural.bridge.device.SmartTV;
import az.employee.designpatterns.structural.bridge.device.TV;
import az.employee.designpatterns.structural.bridge.remote.AdvancedController;
import az.employee.designpatterns.structural.bridge.remote.RemoteController;
import az.employee.designpatterns.structural.bridge.remote.SimpleController;

public class BridgeMain {

    public static void main(String[] args) {
        Device tv = new TV();
//        Device radio = new

        RemoteController pult = new SimpleController(tv);
        pult.power();
        pult.increaseVolume();
        pult.setChannel(39);

        AdvancedController advancedController = new AdvancedController(tv);
        advancedController.power();
        advancedController.increaseVolume();
        advancedController.setChannel(40);
        advancedController.mute();
        advancedController.mute();

        SmartTV smartTV = new SmartTV();
        advancedController = new AdvancedController(smartTV);
        advancedController.power();
        advancedController.increaseVolume();
        advancedController.setChannel(40);
        advancedController.mute();
        advancedController.mute();

    }
}
