package az.employee.designpatterns.structural.adapter;

public class AdapterMain {

    public static void main(String[] args) {
//        KohneSistem kohneSistem = new KohneSistem();
        YeniSistem yeniSistem = new YeniSistem();
        YeniSistemAdapter adapter = new YeniSistemAdapter(yeniSistem);
//        Client client = new Client(kohneSistem);
        Client client = new Client(adapter);

        client.test();
    }
}
