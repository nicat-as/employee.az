package az.employee.designpatterns.behavioral.iterator;

public interface ContainerIterator<T> {

    boolean hasNext();
    T next();
}
