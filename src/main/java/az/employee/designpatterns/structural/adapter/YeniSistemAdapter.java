package az.employee.designpatterns.structural.adapter;

public class YeniSistemAdapter extends KohneSistem{
    private YeniSistem yeniSistem;

    public YeniSistemAdapter(YeniSistem yeniSistem) {
        this.yeniSistem = yeniSistem;
    }

    @Override
    public void isle() {
        System.out.println("yeni sistem adapter isle metodu cagirildi");

        yeniSistem.process1();
        yeniSistem.process2();
    }
}
