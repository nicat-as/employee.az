package az.employee.repository.jdbc.sql;

public class UserQueries {
    public static final String ADD_USER = "insert into user(id, name, surname, user_status_id, email, password) " +
            "values(null, :name, :surname, :user_status_id, :email, :password)";

    public static final String UPDATE_USER = "update user " +
            "set name = :name, surname = :surname, " +
            "   email = :email, user_status_id = :user_status_id, " +
            "   phone = :phone, mobile = :mobile " +
            "   udate = current_timestamp() " +
            "where id = :id and status = 1";

    public static final String ADD_USER_ROLE = "insert into user_role(id, user_id, role_id) " +
            "values(null, :user_id, :role_id)";

    public static final String GET_USER_ROLES = "select r.id, r.name, r.page, r.priority " +
            "from user_role ur join user u on ur.user_id = u.id and ur.status = 1 and u.status = 1 " +
            " join role r on ur.role_id = r.id and r.status = 1 " +
            "where u.id = :user_id " +
            "order by r.priority ";

    public static final String ADD_TOKEN = "insert into token(id, value, generation_date, expire_date, user_id) " +
            "values(null, :token, :generation_date,:expire_date, :user_id)";

    public static final String GET_TOKEN = "select t.id, t.value, t.generation_date, t.expire_date, t.used, " +
            "   t.user_id, t.idate, t.udate, " +
            "   u. u.user_status_id, u.name, u.surname, u.idate user_idate, u.udate user_udate, " +
            "   u.email, u.password " +
            "from token t join user u on t.user_id = u.id and u.status = 1 " +
            "where t.value = :token and t.status = 1";

    public static final String GET_USER_BY_EMAIL = "select id,  name, surname, idate, udate, " +
            "user_status_id, email, password " +
            "from user " +
            "where email = :email and status = 1";

    public static final String GET_USER_BY_TOKEN = "select id,  name, surname, idate, udate, " +
            " user_status_id, email, password " +
            "from user u join token t on u.id = t.user_id " +
            "   and t.value = ? " +
            "    and t.used = 0 " +
            "    and u.status = 1 " +
            "    and t.status = 1";


    public static final String GET_TOTAL_USER_COUNT = "select count(ur.role_id) " +
            "from user u join user_role ur on ur.user_id = u.id " +
            "where ur.role_id = 1 ";

    public static final String GET_FILTERED_USER_COUNT = "select count(ur.role_id) " +
            "from user u join user_role ur on ur.user_id = u.id and ur.status = 1 and u.status = 1 " +
            "join candidate c on c.user_id = u.id and c.status = 1 " +
            "join address ad on c.address_id = ad.id and ad.status = 1 " +
            "join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "left join education_level el on c.degree_id = el.id and el.status = 1 " +
            "where ur.role_id = 1 and concat(u.name,u.surname,u.email,ifnull(u.phone,\"\"),ifnull(u.mobile,\"\"),ifnull(c.birth_date,\"\"),ct.name,el.name,ifnull(c.position,\"\")) like :searchWord";
}
