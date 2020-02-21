package az.employee.designpatterns.structural.proxy;

public class Vetendas {

    private NazirInterfeysi nazir;

    public Vetendas(NazirInterfeysi nazir) {
        System.out.println("Vetendas yarandi");
        this.nazir = nazir;
    }

    public void muracietEt() {
        System.out.println("vetendas muraciet etdi");
        nazir.emrVer();
    }
}
