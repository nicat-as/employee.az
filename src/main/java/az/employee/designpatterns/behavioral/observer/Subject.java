package az.employee.designpatterns.behavioral.observer;

import java.util.ArrayList;
import java.util.List;

public class Subject {
    private List<Observer> observers;

    public Subject() {
        observers = new ArrayList<>();
    }

    public void register(Observer observer) {
        System.out.println("registering new observer " + observer);
        observers.add(observer);
    }

    public void unregister(Observer observer) {
        System.out.println("removing observer " + observer);
        observers.remove(observer);
    }

    public void eventOccurred(Event event) {
        System.out.println("Notifying all observers");
        observers.forEach(observer -> observer.notifyEvent(event));
    }
}
