package az.employee.domain;

import java.util.Arrays;

public enum TagOwnerType {
    JOB(1),
    CANDIDATE(2),
    COMPANY(3);

    private int value;

    TagOwnerType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static TagOwnerType fromValue(int type) {
        return Arrays.stream(values())
                .filter(tagOwnerType -> tagOwnerType.value == type)
                .findFirst().orElseThrow(() -> new RuntimeException("Invalid job type " + type));
    }
}
