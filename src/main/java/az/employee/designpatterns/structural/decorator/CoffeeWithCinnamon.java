package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class CoffeeWithCinnamon extends Decorator {

    protected CoffeeWithCinnamon(Coffee coffee) {
        super(coffee);
    }

    @Override
    public BigDecimal getCost() {
        return super.getCost().add(BigDecimal.valueOf(1.5));
    }

    @Override
    public String getIngredients() {
        return super.getIngredients() + " with cinnamon";
    }
}
