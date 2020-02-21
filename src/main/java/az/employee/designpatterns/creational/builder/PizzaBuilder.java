package az.employee.designpatterns.creational.builder;

public class PizzaBuilder {
    private String ad;
    private PizzaOlcu olcu;
    private boolean pendir;
    private boolean et;
    private boolean zeytun;
    private boolean sous;
    private boolean qalin;
    private boolean qarisiq;
    private boolean gobelek;
    private boolean halal;

    public PizzaBuilder(String ad) {
        this.ad = ad;
    }

    public boolean isHalal() {
        return halal;
    }

    public void setHalal(boolean halal) {
        this.halal = halal;
    }

    public String getAd() {
        return ad;
    }

    public void setAd(String ad) {
        this.ad = ad;
    }

    public PizzaOlcu getOlcu() {
        return olcu;
    }

    public void setOlcu(PizzaOlcu olcu) {
        this.olcu = olcu;
    }

    public boolean isPendir() {
        return pendir;
    }

    public void setPendir(boolean pendir) {
        this.pendir = pendir;
    }

    public boolean isEt() {
        return et;
    }

    public void setEt(boolean et) {
        this.et = et;
    }

    public boolean isZeytun() {
        return zeytun;
    }

    public void setZeytun(boolean zeytun) {
        this.zeytun = zeytun;
    }

    public boolean isSous() {
        return sous;
    }

    public void setSous(boolean sous) {
        this.sous = sous;
    }

    public boolean isQalin() {
        return qalin;
    }

    public void setQalin(boolean qalin) {
        this.qalin = qalin;
    }

    public boolean isQarisiq() {
        return qarisiq;
    }

    public void setQarisiq(boolean qarisiq) {
        this.qarisiq = qarisiq;
    }

    public boolean isGobelek() {
        return gobelek;
    }

    public void setGobelek(boolean gobelek) {
        this.gobelek = gobelek;
    }

    public PizzaBuilder qalin(boolean qalin) {
        this.setQalin(qalin);
        return this;
    }

    public PizzaBuilder etli(boolean etli) {
        this.setEt(etli);
        return this;
    }

    public PizzaBuilder zeytun(boolean zeytun) {
        this.setZeytun(zeytun);
        return this;
    }

    public PizzaBuilder sous(boolean sous) {
        this.setSous(sous);
        return this;
    }

    public PizzaBuilder olcu(PizzaOlcu olcu) {
        this.setOlcu(olcu);
        return this;
    }

    public PizzaBuilder halal(boolean halal) {
        this.setHalal(halal);
        return this;
    }

    public PizzaBuilder qarisiq(boolean qarisiq) {
        this.setQarisiq(qarisiq);
        return this;
    }

    public PizzaBuilder pendir(boolean pendir) {
        this.setPendir(pendir);
        return this;
    }

    public PizzaBuilder gobelek(boolean gobelek) {
        this.setGobelek(gobelek);
        return this;
    }

    public Pizza build() {
        return new Pizza(ad, olcu, pendir, et, zeytun, sous, qalin, qarisiq, halal);
    }
}
