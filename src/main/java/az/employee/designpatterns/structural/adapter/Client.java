package az.employee.designpatterns.structural.adapter;

public class Client {

    private KohneSistem sistem;

    public Client(KohneSistem sistem) {
        this.sistem = sistem;
    }

    public void test() {
        sistem.isle();
    }
}
