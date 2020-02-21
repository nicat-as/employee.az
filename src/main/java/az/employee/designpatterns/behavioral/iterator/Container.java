package az.employee.designpatterns.behavioral.iterator;

import java.util.*;

public class Container<T> {
    private List<T> data;
    private int index;

    public Container() {
        this.data = new ArrayList<>();
        this.index = 0;
    }

    public void add(T element) {
        data.add(element);
    }

    public void remove(T element) {
        data.remove(element);
    }


    public ContainerIterator<T> iterator() {
        Iterator<Integer> dataIterator = (Iterator<Integer>) data.iterator();
        ContainerIterator<T> iterator = new ContainerIterator<T>() {

            @Override
            public boolean hasNext() {
                return dataIterator.hasNext();
            }

            @Override
            public T next() {
                return (T) dataIterator.next();
            }
        };

        return iterator;
    }
}
