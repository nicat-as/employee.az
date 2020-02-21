package az.employee.designpatterns.creational.prototype;

import java.util.ArrayList;
import java.util.List;

public abstract class Prototype implements Cloneable {

    protected int x;
    protected int y;
    protected List<Integer> list;

    public Prototype() {
        this.list = new ArrayList<>();
    }

    public List<Integer> getList() {
        return list;
    }

    public void setList(List<Integer> list) {
        this.list = list;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void add(int value) {
        list.add(value);
    }

    @Override
    protected Prototype clone() throws CloneNotSupportedException {
        return (Prototype) super.clone();
    }

    @Override
    public String toString() {
        return "Prototype{" +
                "x=" + x +
                ", y=" + y +
                ", list=" + list +
                '}';
    }
}
