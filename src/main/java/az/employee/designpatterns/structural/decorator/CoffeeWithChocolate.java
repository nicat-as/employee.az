package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class CoffeeWithChocolate extends Decorator {
    protected CoffeeWithChocolate(Coffee coffee) {
        super(coffee);
    }

    @Override
    public BigDecimal getCost() {
        return super.getCost().add(BigDecimal.valueOf(1));
    }

    @Override
    public String getIngredients() {
        return super.getIngredients() + " with chocolate";
    }
}
