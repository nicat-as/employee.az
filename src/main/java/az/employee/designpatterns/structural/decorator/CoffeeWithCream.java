package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class CoffeeWithCream extends Decorator {
    protected CoffeeWithCream(Coffee coffee) {
        super(coffee);
    }

    @Override
    public BigDecimal getCost() {
        return super.getCost().add(BigDecimal.valueOf(2));
    }

    @Override
    public String getIngredients() {
        return super.getIngredients() + " with cream";
    }
}
