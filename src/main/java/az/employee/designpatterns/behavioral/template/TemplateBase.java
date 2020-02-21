package az.employee.designpatterns.behavioral.template;

public abstract class TemplateBase {

    public void work() {
        System.out.println("start work");

        System.out.println("run step 1");
        step1();

        System.out.println("check step 2");
        if(step2()) {
            System.out.println("run step 3");
            step3();
        } else {
            System.out.println("run step 4");
            step4();
        }
        System.out.println("step 5");
        step5();
    }

    public void step1() {
        System.out.println("Running step 1");
    }

    public boolean step2() {
        System.out.println("Running step 2");
        return true;
    }


    public abstract void step3();

    public abstract void step4();

    public void step5() {
        System.out.println("Running step 5");
    }
}
