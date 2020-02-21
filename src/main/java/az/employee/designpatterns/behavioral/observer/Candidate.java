package az.employee.designpatterns.behavioral.observer;

public class Candidate implements Observer{

    private String name;
    private String surname;

    public Candidate(String name, String surname) {
        this.name = name;
        this.surname = surname;
    }

    @Override
    public void notifyEvent(Event event) {
        System.out.println("candidate received new event " + event);
    }

    @Override
    public String toString() {
        return "Candidate{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                '}';
    }
}
