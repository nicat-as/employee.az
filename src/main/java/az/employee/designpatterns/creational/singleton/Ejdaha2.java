package az.employee.designpatterns.creational.singleton;

public class Ejdaha2 {

    private static Ejdaha2 ejdaha = null;

    private Ejdaha2() {
    }

    public static Ejdaha2 getInstance() {
        if(ejdaha == null) {
            System.out.println("ejdaha = null, sync-den evvel ");
            synchronized (Ejdaha2.class) {
                if(ejdaha == null) {
                    System.out.println("ejdaha = null, syncden sonra");
                    ejdaha = new Ejdaha2();
                }
            }

        }

        return ejdaha;
    }


}
