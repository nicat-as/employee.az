package az.employee.domain;

public enum Role {
    CANDIDATE(1),
    COMPANY(2),
    ADMIN(3);

    private int value;
    private String page;
    private int priority;

    Role(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }


    public static Role fromValue(int value) {
        Role userType = null;

        if (value == 1) {
            userType = CANDIDATE;
        }else if (value == 2) {
            userType = COMPANY;
        }else if (value == 3) {
            userType = ADMIN;
        }else {
            throw new RuntimeException("Invalid user type value = " +value);
        }

        return userType;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public String getPage() {
        return page;
    }
}
