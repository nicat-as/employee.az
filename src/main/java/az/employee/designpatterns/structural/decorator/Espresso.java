package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class Espresso implements Coffee {
    @Override
    public BigDecimal getCost() {
        return BigDecimal.valueOf(5);
    }

    @Override
    public String getIngredients() {
        return "espresso";
    }
}
