package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class CoffeeWithIce extends Decorator {
    protected CoffeeWithIce(Coffee coffee) {
        super(coffee);
    }

    @Override
    public BigDecimal getCost() {
        return super.getCost().add(BigDecimal.valueOf(0.5));
    }

    @Override
    public String getIngredients() {
        return super.getIngredients() + " with ice";
    }
}
