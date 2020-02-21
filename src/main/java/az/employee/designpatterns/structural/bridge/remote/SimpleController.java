package az.employee.designpatterns.structural.bridge.remote;

import az.employee.designpatterns.structural.bridge.device.Device;

public class SimpleController extends RemoteController {

    public SimpleController(Device device) {
        super(device);
    }

    @Override
    public void power() {
        if(device.isEnabled()) {
            device.turnOff();
        } else {
            device.turnOn();
        }
    }

    @Override
    public void increaseVolume() {
        if(device.isEnabled()) {
            device.setVolume(device.getVolume() + 1);
            System.out.println("increased device volume, current volume = " + device.getVolume());
        }
    }

    @Override
    public void decreaseVolume() {
        if(device.isEnabled()) {
            device.setVolume(device.getVolume() - 1);
        }
    }

    @Override
    public void increaseChannel() {
        if(device.isEnabled()) {
            device.changeChannel(device.getChannel() + 1);
        }
    }

    @Override
    public void decreaseChannel() {
        if(device.isEnabled()) {
            device.changeChannel(device.getChannel() - 1);
        }
    }

    @Override
    public void setChannel(int channel) {
        if(device.isEnabled()) {
            device.changeChannel(channel);
        }
    }

    @Override
    public String toString() {
        return "SimpleController{" +
                "device=" + device +
                '}';
    }
}
