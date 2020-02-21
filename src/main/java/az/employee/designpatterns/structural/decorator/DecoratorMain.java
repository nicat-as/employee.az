package az.employee.designpatterns.structural.decorator;

public class DecoratorMain {

    public static void main(String[] args) {
        Coffee coffee1 = new Espresso();
        print(coffee1);

        Coffee coffee2 = new CoffeeWithMilk(new Espresso());
        print(coffee2);

        Coffee coffee3 = new CoffeeWithCinnamon(new CoffeeWithMilk(new CoffeeWithChocolate(new Espresso())));
        print(coffee3);

        Coffee coffee4 = new CoffeeWithCinnamon(new CoffeeWithVanilla(new Latte()));
        print(coffee4);

        Coffee coffee5 = new CoffeeWithCream(new CoffeeWithChocolate(new CoffeeWithMilk(new Americano())));
        print(coffee5);

        Coffee coffee6 = new CoffeeWithMilk(new CoffeeWithIce(new CoffeeWithChocolate(new Espresso())));
        print(coffee6);

    }

    public static void print(Coffee coffee) {
        System.out.println(coffee.getCost() + " " + coffee.getIngredients());

    }
}
