package az.employee.designpatterns.creational.builder;

public class BuilderMain {

    public static void main(String[] args) {
        Pizza pizza = new Pizza.PizzaBuilder("qarisiq")
                .olcu(PizzaOlcu.BOYUK)
                .qalin(true)
                .etli(true)
                .pendir(true)
                .zeytun(true)
                .halal(true)
                .sous(false)
                .qarisiq(true)
                .build();

        System.out.println(pizza);

        Pizza pizza1 = new Pizza.PizzaBuilder("double cheeseburger")
                .etli(true)
                .zeytun(true)
                .pendir(true)
                .gobelek(true)
                .olcu(PizzaOlcu.BOYUK)
                .sous(true)
                .build();

        System.out.println("Malikin pizzasi = " + pizza1);

        Pizza pizza2 = new PizzaBuilder("marqarita")
                .olcu(PizzaOlcu.ORTA)
                .pendir(true)
                .sous(true)
                .build();

        System.out.println("xususi pizza = " + pizza2);

        Pizza pizza3 = new Pizza("marqarita", PizzaOlcu.ORTA, true, false, false, true, true, false, true);
        System.out.println("xususi pizza = " + pizza3);
    }
}
