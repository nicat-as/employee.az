package az.employee.designpatterns.creational.singleton;

public class SingletonMain {
    public static void main(String[] args) {
        Ejdaha ejdaha1 = Ejdaha.getEjdaha();
        Ejdaha ejdaha2 =  Ejdaha.getInstance();

        System.out.println(ejdaha1.hashCode());
        System.out.println(ejdaha2.hashCode());

        System.out.println(ejdaha1);
        System.out.println(ejdaha2);
        ejdaha2.setName("Tofiq");
        System.out.println(ejdaha1);
        System.out.println(ejdaha2);

        Ejdaha2 ejdaha21 = Ejdaha2.getInstance();
        Ejdaha2 ejdaha22 = Ejdaha2.getInstance();
        System.out.println(ejdaha21);
        System.out.println(ejdaha22);
    }
}
