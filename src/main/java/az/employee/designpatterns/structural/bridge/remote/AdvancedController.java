package az.employee.designpatterns.structural.bridge.remote;

import az.employee.designpatterns.structural.bridge.device.Device;

public class AdvancedController extends SimpleController {
    private int oldVolume;

    public AdvancedController(Device device) {
        super(device);
    }

    public void mute() {
        if(device.isEnabled()) {
            if(device.getVolume() > 0) {
                this.oldVolume = device.getVolume();
                device.setVolume(0);
            } else {
                device.setVolume(oldVolume);
            }
        }

    }
}
