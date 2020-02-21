package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class CoffeeWithMilk extends Decorator {
    protected CoffeeWithMilk(Coffee coffee) {
        super(coffee);
    }

    @Override
    public BigDecimal getCost() {
        return super.getCost().add(BigDecimal.valueOf(1));
    }

    @Override
    public String getIngredients() {
        return super.getIngredients() + " with milk";
    }
}
