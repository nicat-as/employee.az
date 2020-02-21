package az.employee.designpatterns.structural.decorator;

import java.math.BigDecimal;

public class Americano implements Coffee {
    @Override
    public BigDecimal getCost() {
        return BigDecimal.valueOf(6);
    }

    @Override
    public String getIngredients() {
        return "americano";
    }
}
