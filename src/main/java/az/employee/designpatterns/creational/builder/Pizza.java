package az.employee.designpatterns.creational.builder;

public class Pizza {
    private String ad;
    private PizzaOlcu olcu;
    private boolean pendir;
    private boolean et;
    private boolean zeytun;
    private boolean sous;
    private boolean qalin;
    private boolean qarisiq;
    private boolean gobelek;

    public Pizza() {
    }

    public boolean isGobelek() {
        return gobelek;
    }

    public void setGobelek(boolean gobelek) {
        this.gobelek = gobelek;
    }

    public Pizza(String ad, PizzaOlcu olcu, boolean pendir, boolean et, boolean zeytun, boolean sous, boolean qalin, boolean qarisiq, boolean halal) {
        this.ad = ad;
        this.olcu = olcu;
        this.pendir = pendir;
        this.et = et;
        this.zeytun = zeytun;
        this.sous = sous;
        this.qalin = qalin;
        this.qarisiq = qarisiq;
        this.halal = halal;
    }



    public Pizza(String ad, PizzaOlcu olcu, boolean pendir, boolean et, boolean zeytun, boolean sous, boolean qalin, boolean halal) {
        this.ad = ad;
        this.olcu = olcu;
        this.pendir = pendir;
        this.et = et;
        this.zeytun = zeytun;
        this.sous = sous;
        this.qalin = qalin;
        this.halal = halal;
    }

    private boolean halal;

    public Pizza(String ad, PizzaOlcu olcu, boolean pendir, boolean et, boolean zeytun, boolean sous, boolean qalin) {
        this.ad = ad;
        this.olcu = olcu;
        this.pendir = pendir;
        this.et = et;
        this.zeytun = zeytun;
        this.sous = sous;
        this.qalin = qalin;
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

    public boolean isHalal() {
        return halal;
    }

    public void setHalal(boolean halal) {
        this.halal = halal;
    }

    public static class PizzaBuilder {
        private Pizza pizza;

        public PizzaBuilder(String name) {
            this.pizza = new Pizza();
            this.pizza.setAd(name);
        }

        public PizzaBuilder qalin(boolean qalin) {
            this.pizza.setQalin(qalin);
            return this;
        }

        public PizzaBuilder etli(boolean etli) {
            this.pizza.setEt(etli);
            return this;
        }

        public PizzaBuilder zeytun(boolean zeytun) {
            this.pizza.setZeytun(zeytun);
            return this;
        }

        public PizzaBuilder sous(boolean sous) {
            this.pizza.setSous(sous);
            return this;
        }

        public PizzaBuilder olcu(PizzaOlcu olcu) {
            this.pizza.setOlcu(olcu);
            return this;
        }

        public PizzaBuilder halal(boolean halal) {
            this.pizza.setHalal(halal);
            return this;
        }

        public PizzaBuilder qarisiq(boolean qarisiq) {
            this.pizza.setQarisiq(qarisiq);
            return this;
        }

        public PizzaBuilder pendir(boolean pendir) {
            this.pizza.setPendir(pendir);
            return this;
        }

        public PizzaBuilder gobelek(boolean gobelek) {
            this.pizza.setGobelek(gobelek);
            return this;
        }

        public Pizza build() {
            return this.pizza;
        }
    }

    @Override
    public String toString() {
        return "Pizza{" +
                "ad='" + ad + '\'' +
                ", olcu=" + olcu +
                ", pendir=" + pendir +
                ", et=" + et +
                ", zeytun=" + zeytun +
                ", sous=" + sous +
                ", qalin=" + qalin +
                ", qarisiq=" + qarisiq +
                ", halal=" + halal +
                '}';
    }
}
