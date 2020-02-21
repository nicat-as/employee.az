package az.employee.designpatterns.structural.proxy;

public class SadeceNazir implements NazirInterfeysi {

    public SadeceNazir() {
        System.out.println("sade nazir obyekti yarandi");
    }

    @Override
    public void emrVer() {
        System.out.println("sade nazir emr verir");
    }
}
