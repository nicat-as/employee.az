package az.employee.domain;

import java.util.Arrays;

public enum  JobType {
    PART_TIME(1), FULL_TIME(2), REMOTE(3), INTERNSHIP(4), OTHER(5);

    private int value;

    JobType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static JobType fromValue(int type) {
        return Arrays.stream(values())
                .filter(jobType -> jobType.value == type)
                .findFirst().orElseThrow(() -> new RuntimeException("Invalid job type " + type));
    }

}
