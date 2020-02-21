package az.employee.designpatterns.structural.bridge.device;

public abstract class Device {

    protected boolean enabled;

    public boolean isEnabled() {
        return enabled;
    }

    public abstract void turnOn();

    public abstract void turnOff();

    public abstract int getChannel();

    public abstract void changeChannel(int channel);

    public abstract int getVolume();

    public abstract void setVolume(int volume);
}
