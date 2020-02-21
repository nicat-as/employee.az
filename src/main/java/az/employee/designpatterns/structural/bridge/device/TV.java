package az.employee.designpatterns.structural.bridge.device;

public class TV extends Device {

    private int channel;
    private int volume;

    public TV() {
        this.enabled = false;
        this.channel = 1;
        this.volume = 10;
    }

    @Override
    public void turnOn() {
        if(!isEnabled()) {
            enabled = true;
            System.out.println("turned on tv");
        }
    }

    @Override
    public void turnOff() {
        if(isEnabled()) {
            enabled = false;
            System.out.println("turned off tv");
        }
    }

    @Override
    public int getChannel() {
        return this.channel;
    }

    @Override
    public void changeChannel(int channel) {
        if(channel > 0) {
            this.channel = channel;
            System.out.println("TV changed channel to " + this.channel);
        } else {
            throw new IllegalArgumentException("Invalid channel " + channel);
        }
    }

    @Override
    public int getVolume() {
        return this.volume;
    }

    @Override
    public void setVolume(int volume) {
        if(volume >= 0) {
            this.volume = volume;
            System.out.println("TV new volume = " + this.volume);
        } else {
            throw new IllegalArgumentException("Invalid volume " + volume);
        }
    }
}
