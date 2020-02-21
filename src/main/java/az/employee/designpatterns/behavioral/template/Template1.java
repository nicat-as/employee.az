package az.employee.designpatterns.behavioral.template;

public class Template1 extends TemplateBase {

    @Override
    public void step3() {
        System.out.println("step 3 custom logic 1");
    }

    @Override
    public void step4() {
        System.out.println("step 4 custom logic 1");
    }
}
