package az.employee.repository.jdbc;

public class SqlQueryForArchiveJobs {

    public static final String GET_ARCHIVE_LIST_WITH_PAGING =
            "select j.id job_id, j.position, concat(u.name, ' ',  u.surname) name, " +
                "   j.salary_min, j.salary_max, j.post_date, " +
                " j.deadline " +
            " from job j join user u on j.user_id = u.id and j.status = 2 and u.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "       from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "       join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )" +
            " and concat(j.position, u.name, u.surname, j.salary_min, j.salary_max, " +
                    " date_format(j.post_date, '%d.%m.%Y'), date_format(j.deadline, '%d.%m.%Y'), " +
                    " j.organization_id) " +
                    "like :filter " +
                    "   order by {SORT_COLUMN} {SORT_DIRECTION} " +
                    " limit :start, :length ";


    public static final String GET_DATA_COUNT = "select count(j.id) " +
            "from job j join user u on j.user_id = u.id and j.status = 2 and u.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "       from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "       join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )" ;

    public static final String GET_FILTERED_DATA_COUNT = "select count(j.id) " +
            "from job j join user u on j.user_id = u.id and j.status = 2 and u.status = 1 " +
            " where j.organization_id in ( " +
            "   select o.id " +
            "       from organization o join organization_user ou on o.id = ou.organization_id and o.status = 1 and ou.status = 1 " +
            "       join user u on ou.user_id = u.id and u.status = 1 " +
            "   where u.id = :user_id " +
            " )" +
            " and concat(j.position, u.name, u.surname, j.about, j.requirement, j.salary_min, j.salary_max, " +
            " date_format(j.post_date, '%d.%m.%Y'), date_format(j.deadline, '%d.%m.%Y'), " +
            " j.organization_id)  " +
            "like :filter ";

    public static final String GET_ARCHIVE_JOBS_BY_ID = "select concat(u.name, ' ', u.surname) name, " +
            "            j.position,j.about,j.requirement, " +
            "            j.salary_min,j.salary_max,j.post_date,j.deadline, " +
            "            cr.name country_name,ct.name city_name, " +
            "            jt.name job_type_name, " +
            "            j.experience_min,j.experience_max, " +
            "            jc.name job_category_name, " +
            "            o.name organization_name, " +
            "            j.premium " +
            "            from job j join user u on j.user_id = u.id and u.status = 1 " +
            "            join address a on j.address_id = a.id and a.status = 1 " +
            "            join country cr on a.country_id = cr.id and cr.status = 1 " +
            "            join city ct on a.city_id = ct.id and ct.status = 1 " +
            "            join job_type jt on j.job_type_id = jt.id and jt.status = 1 " +
            "            join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "            left join organization o on j.organization_id = o.id and o.status = 1 " +
            "            where j.status = 2 and j.organization_id = :organization_id";
}
