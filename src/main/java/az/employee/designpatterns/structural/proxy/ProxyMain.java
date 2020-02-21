package az.employee.designpatterns.structural.proxy;

public class ProxyMain {

    public static void main(String[] args) {
        SadeceNazir nazir = new SadeceNazir();
        NazirKomekcisi komekci = new NazirKomekcisi(nazir);

        Vetendas vetendas = new Vetendas(komekci);
        vetendas.muracietEt();
    }
}
