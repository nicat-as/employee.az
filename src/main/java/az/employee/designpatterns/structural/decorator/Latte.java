package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class Latte implements Coffee {

    @Override
    public BigDecimal getCost() {
        return BigDecimal.valueOf(8);
    }

    @Override
    public String getIngredients() {
        return "latte";
    }
}
