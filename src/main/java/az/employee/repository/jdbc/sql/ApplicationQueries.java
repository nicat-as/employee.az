package az.employee.repository.jdbc.sql;

public class ApplicationQueries {

    public static final String GET_APPLICATION_WITH_PAGING = "select cj.id, cj.candidate_id, cj.job_id, cj.application_date, cj.status, " +
            " u.name, u.surname, u.email, " +
            "    j.user_id, j.position " +
            "from application cj join candidate c on cj.candidate_id = c.id and cj.status = 1 and c.status = 1" +
            " join user u on c.user_id = u.id and u.status = 1 " +
            " join job j on cj.job_id = j.id and j.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "   from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "   join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )" +
            " and concat(u.name, u.surname, u.email, date_format(cj.application_date, '%d.%m.%Y'), j.position) like :filter " +
            "    order by {SORT_COLUMN} {SORT_DIRECTION} " +
            " limit :start, :length ";

    public static final String GET_APPLICATION_COUNT = "select count(cj.id) " +
            " from application cj join job j on cj.job_id = j.id and cj.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "   from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "   join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )";

    public static final String GET_FILTERED_APPLICATION_COUNT = "select count(cj.id) " +
            " from application cj join candidate c on cj.candidate_id = c.id and cj.status = 1 and c.status = 1" +
            " join user u on c.user_id = u.id and u.status = 1 " +
            " join job j on cj.job_id = j.id and j.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "   from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "   join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )" +
            " and concat(u.name, u.surname, u.email, date_format(cj.application_date, '%d.%m.%Y'), j.position) like :filter ";




}

