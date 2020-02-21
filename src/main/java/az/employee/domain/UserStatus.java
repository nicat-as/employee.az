package az.employee.domain;

public enum UserStatus {
    PENDING(0),
    ACTIVE(1),
    DELETED(2),
    DEACTIVE(3);

    private int value;

    UserStatus(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }


    public static UserStatus fromStatus(int value) {
        UserStatus userStatus = null;
        if (value == 0) {
            userStatus = PENDING;
        }else if (value == 1) {
            userStatus = ACTIVE;
        }else if (value == 2) {
            userStatus = DELETED;
        }else if (value == 3) {
            userStatus = DEACTIVE;
        }else {
            throw new RuntimeException("Invalid user status value = " +value);
        }
        return userStatus;
    }
}
