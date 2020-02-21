package az.employee.designpatterns.creational.prototype;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PrototypeMain {
    public static void main(String[] args) {

        try {
            AltClass1 o1 = new AltClass1();
            o1.setX(5);
            o1.setY(6);

            List<Integer> list = new ArrayList<>(Arrays.asList(2, 4, 6));
            o1.setList(list);
            System.out.println("o1 = " + o1);

            AltClass1 o2 = o1.clone();
            System.out.println("o2 = " + o2);

            o2.setX(o2.getX() * 2);
            o2.setY(o2.getY() * 3);
            o2.add(17);
            System.out.println("o1 = " + o1);
            System.out.println("o2 = " + o2);

            // shallow copy vs deep copy

        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
    }
}
