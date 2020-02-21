package az.employee.designpatterns.structural.bridge.remote;

import az.employee.designpatterns.structural.bridge.device.Device;

public abstract class RemoteController {

    protected Device device;

    public RemoteController(Device device) {
        this.device = device;
    }

    public abstract void power();

    public abstract void increaseVolume();
    public abstract void decreaseVolume();

    public abstract void increaseChannel();
    public abstract void decreaseChannel();
    public abstract void setChannel(int channel);

}
