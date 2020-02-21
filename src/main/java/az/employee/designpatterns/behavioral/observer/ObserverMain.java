package az.employee.designpatterns.behavioral.observer;

public class ObserverMain {

    public static void main(String[] args) {
        Subject subject = new Subject();

        Candidate candidate1 = new Candidate("Ali", "Mammadov");
        Candidate candidate2 = new Candidate("Tofiq", "Mammadov");
        Candidate candidate3 = new Candidate("Rza", "Rzayev");
        Student student1 = new Student("20200101", "Cavid Aslanov");
        Student student2 = new Student("20200102", "Musa Musayev");

        subject.register(candidate1);
        subject.register(candidate2);
        subject.register(candidate3);
        subject.register(student1);
        subject.register(student2);

        Event event = new Event();
        event.setData("https://browser.az/vacancy/front-end-web-developer-back-end-web-developer-60856");
        subject.eventOccurred(event);

        subject.unregister(candidate1);
        subject.unregister(student2);

        Event event2 = new Event();
        event2.setData("http://www.jobsearch.az/vacancies52647_en.html");
        subject.eventOccurred(event2);

    }

}
