package az.employee.designpatterns.behavioral.template;

public class TemplateMain {

    public static void main(String[] args) {
        TemplateBase template = new Template1();
        template.work();

        template = new Template2();
        template.work();
    }
}
