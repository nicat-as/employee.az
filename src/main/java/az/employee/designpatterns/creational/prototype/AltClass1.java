package az.employee.designpatterns.creational.prototype;

import java.util.ArrayList;
import java.util.List;

public class AltClass1 extends Prototype {
    @Override
    protected AltClass1 clone() throws CloneNotSupportedException {
        AltClass1 clone = (AltClass1) super.clone();

        List<Integer> newList = new ArrayList<>();
        getList().forEach(value -> newList.add(value));

        clone.setList(newList);
        return clone;
    }
}
