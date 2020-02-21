package az.employee.repository.jdbc.sql;

public class SqlQuery {

    public static final String CHECK_EMAIL = "select count(id) cnt " +
            "from user " +
            "where email = :email and status = 1";


    public static final String GET_COUNTRY_LIST = "select id, name, idate, udate " +
            "from country " +
            "where status = 1";

    public static final String GET_CITY_LIST_BY_COUNTRY_ID = "select id, name, country_id, idate, udate " +
            "from city " +
            "where status = 1 and country_id = :country_id";

    public static final String GET_EDUCATION_ORGANIZATION_LIST = "select id, name, idate, udate " +
            "from education_org " +
            "where status = 1";

    public static final String GET_INDUSTRY_FIELDS = "select id, name " +
            "from industry";

    public static final String GET_INDUSTRY_ID_BY_NAME = "select id " +
            "from industry where name = :name and status = 1";

    public static final String GET_EDUCATION_LEVEL_LIST = "select id, name, idate, udate " +
            "from education_level " +
            "where status = 1";

    public static final String GET_LANGUAGE_LIST = "select id, name, idate, udate " +
            "from language " +
            "where status = 1";

}

