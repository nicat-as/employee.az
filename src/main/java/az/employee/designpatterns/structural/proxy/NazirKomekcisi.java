package az.employee.designpatterns.structural.proxy;

import java.util.Random;

public class NazirKomekcisi implements NazirInterfeysi {

    private SadeceNazir nazir;

    public NazirKomekcisi(SadeceNazir nazir) {
        this.nazir = nazir;
    }

    @Override
    public void emrVer() {
        Random random = new Random();
        int value = random.nextInt(100);
        System.out.println("random value = " + value);
        if(value % 7 == 0) {
            System.out.println("nazir komekcisi muracieti nazire yonlendirir");
            nazir.emrVer();
        } else {
            System.out.println("nazir komekcisi ozu meseleni hell edir");
        }
    }
}
