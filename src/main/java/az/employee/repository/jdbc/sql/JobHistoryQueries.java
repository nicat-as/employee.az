package az.employee.repository.jdbc.sql;

public class JobHistoryQueries {

    public static String ADD_JOB_HISTORY = "insert into job_history(id, candidate_id, position, start_date, end_date, " +
            "   country_id, city_id, company, info) " +
            "values(null, :candidate_id, :position, :start_date, :end_date, " +
            "   :country_id, :city_id, :company, :info)";

    public static String GET_JOB_HISTORY_BY_ID = "select jh.id, jh.candidate_id, jh.position, jh.start_date, jh.end_date, jh.country_id, cr.name country_name, " +
            "jh.city_id, ct.name city_name, jh.company, jh.info, jh.idate, jh.udate " +
            "from job_history jh " +
            "join candidate c on jh.candidate_id = c.id and c.status = 1 " +
            "join country cr on jh.country_id = cr.id and cr.status = 1 " +
            "join city ct on jh.city_id = ct.id and ct.status = 1 " +
            "where jh.id = :job_history_id and jh.status = 1";

    public static String UPDATE_JOB_HISTORY_BY_ID = "update job_history " +
            "set start_date = :start_date, end_date = :end_date, " +
            "company = :company, position = :position, " +
            "country_id = :country_id, city_id = :city_id, " +
            "info = :info " +
            "where id = :job_history_id and status = 1";

    public static String DELETE_JOB_HISTORY_BY_ID = "update job_history " +
            "set status = 0 " +
            "where id = :job_history_id and status = 1";

    public static String GET_CANDIDATE_JOB_HISTORY_LIST = "select jh.id, jh.candidate_id, jh.position, " +
            "jh.start_date, jh.end_date, jh.country_id, cr.name country_name, " +
            "jh.city_id, ct.name city_name, jh.company, jh.info, jh.idate, jh.udate " +
            "from job_history jh " +
            "join candidate c on jh.candidate_id = c.id and c.status = 1 " +
            "join country cr on jh.country_id = cr.id and cr.status = 1 " +
            "join city ct on jh.city_id = ct.id and ct.status = 1 " +
            "where jh.candidate_id = :candidate_id and jh.status = 1";
}
