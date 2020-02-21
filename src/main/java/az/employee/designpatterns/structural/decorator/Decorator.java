package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public abstract class Decorator implements Coffee {
    private Coffee coffee;

    protected Decorator(Coffee coffee) {
        this.coffee = coffee;
    }

    @Override
    public BigDecimal getCost() {
        return coffee.getCost();
    }

    @Override
    public String getIngredients() {
        return coffee.getIngredients();
    }
}
