package az.employee.designpatterns.behavioral.observer;

public class Event {
    private String data;

    public Event() {
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Event{" +
                "data='" + data + '\'' +
                '}';
    }
}
