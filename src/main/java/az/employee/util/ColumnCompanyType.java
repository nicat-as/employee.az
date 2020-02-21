package az.employee.util;

public enum  ColumnCompanyType {
    Name(0),
    Head_office(1);

    private int value;

    public int getValue() {
        return value;
    }

    ColumnCompanyType(int value) {
        this.value = value;
    }

    public static ColumnCompanyType getColumn(int type) {
        ColumnCompanyType columnCompanyType = null;

        if (type == Name.value) {
            columnCompanyType = Name;
        } else if (type == Head_office.value) {
            columnCompanyType = Head_office;
        }

        return columnCompanyType;
    }
}
