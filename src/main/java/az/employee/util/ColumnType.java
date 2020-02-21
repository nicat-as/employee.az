package az.employee.util;

public enum ColumnType {
    Name(0),
    Email(1),
    Mobile(2),
    Position(3),
    Salary_min(4),
    Country_name(5);



    private int value;

    ColumnType(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static ColumnType fromColumn(int type) {
        ColumnType columnType = null;

        if (Name.value == type) {
            columnType = Name;
        } else if (Email.value == type) {
            columnType = Email;
        } else if (Mobile.value == type) {
            columnType = Mobile;
        } else if (Position.value == type) {
            columnType = Position;
        } else if (Salary_min.value == type) {
            columnType = Salary_min;
        } else if (Country_name.value == type) {
            columnType = Country_name;
        }


        return columnType;
    }
}
