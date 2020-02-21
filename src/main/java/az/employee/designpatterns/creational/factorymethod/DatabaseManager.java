package az.employee.designpatterns.creational.factorymethod;

import java.util.Random;

public class DatabaseManager {

    public static Database connect() {
        Database database = null;

        Random random = new Random();
        int value = random.nextInt(3);

        if(value == 0) {
            database = new OracleDatabase();
        } else if(value == 1) {
            database = new MySQLDatabase();
        } else {
            database = new PostgreSQLDatabase();
        }

        return database;
    }
}
