package az.employee.designpatterns.behavioral.iterator;

import java.util.Random;

public class IteratorMain {

    public static void main(String[] args) {
        Container<Integer> container = new Container<>();

        Random random = new Random();
        for (int i = 0; i < 10; i++) {
            container.add(random.nextInt(100));
        }

        ContainerIterator<Integer> iterator = container.iterator();
        while (iterator.hasNext()) {
            Integer value = iterator.next();
            System.out.println(value);
        }
    }
}
