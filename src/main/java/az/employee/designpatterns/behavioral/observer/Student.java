package az.employee.designpatterns.behavioral.observer;

public class Student implements Observer {
    private String studentNo;
    private String fullName;

    public Student(String studentNo, String fullName) {
        this.studentNo = studentNo;
        this.fullName = fullName;
    }

    @Override
    public void notifyEvent(Event event) {
        System.out.println("Student received new event " + event);
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentNo='" + studentNo + '\'' +
                ", fullName='" + fullName + '\'' +
                '}';
    }
}
