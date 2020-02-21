package az.employee.designpatterns.creational.prototype;

public class AltClass2 extends Prototype {

    @Override
    protected AltClass2 clone() throws CloneNotSupportedException {
        return (AltClass2) super.clone();
    }
}
