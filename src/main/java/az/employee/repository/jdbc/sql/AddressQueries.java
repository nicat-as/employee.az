package az.employee.repository.jdbc.sql;

public class AddressQueries {

    public static final String ADD_ADDRESS = "insert into address(id, country_id, city_id, info, status)" +
            "values(null, :country_id, :city_id, :info, 1)";

    public static final String UPDATE_ADDRESS = "update address " +
            "set country_id = :country_id, city_id = :city_id, " +
            "info = :info, udate = current_timestamp() " +
            "where id = :id and status = 1";

    public static final String DELETE_ADDRESS = "update address " +
            "set status = 0, udate = current_timestamp() " +
            "where id = :id and status = 1";
}
