package az.employee.designpatterns.structural.bridge.device;

public class SmartTV extends TV {

    private boolean connected;

    public SmartTV() {
        this.connected = false;
    }

    public boolean isConnected() {
        return connected;
    }

    public void playYoutubeVideo(String videoUrl) {
        if(isConnected()) {
            System.out.println("Smart TV is playing " + videoUrl);
        } else {
            System.out.println("Smart TV is not connected to wifi");
        }
    }

    public void connectToWifi() {
        connected = true;
        System.out.println("Smart TV connected to wifi");
    }
}
