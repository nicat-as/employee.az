package az.employee.repository.jdbc.sql;

public class JobQueries {

    public static final String GET_JOB_CATEGORY_COUNT = "select jcb.id,jcb.name,jcb.icon_class,count(j.id) job_count " +
            "from job_category jc join job j on j.job_category_id = jc.id and jc.status = 1 " +
            "join job_category jcb on jc.parent_id = jcb.id and jcb.status = 1 " +
            "group by jcb.id,jcb.name,jcb.icon_class  " +
            "order by count(j.id) desc " +
            "limit 5";

    public static final String GET_ALL_JOB_COUNT = "select count(j.id) from job j " +
            "where j.status = 1 ";

    public static final String GET_RECENT_JOB_LIST = "select j.id, j.position, j.about, j.requirement, j.salary_min, j.salary_max, " +
            "   j.post_date, j.deadline,  " +
            "    j.address_id,  " +
            "    a.country_id, cr.name country_name, " +
            "    a.city_id, ct.name city_name, " +
            "    a.info, " +
            "    j.job_type_id, jp.name job_type_name, " +
            "    j.experience_min, j.experience_max, " +
            "    j.job_category_id, jc.name job_category_name, jc.icon_class, " +
            "    j.idate, j.udate, " +
            "    j.user_id, u.name, u.surname, u.email, u.phone, u.mobile, " +
            "    o.id organization_id, o.name organization_name, " +
            "   o.email org_email, o.phone org_phone, u.mobile org_mobile " +
            "from job j join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "   join job_type jp on j.job_type_id = jp.id and jp.status = 1 " +
            "    join address a on j.address_id = a.id and a.status = 1 " +
            "    join country cr on a.country_id = cr.id and cr.status = 1 " +
            "    join city ct on a.city_id = ct.id and ct.status = 1 " +
            "    join user u on j.user_id = u.id and u.status = 1 " +
            "    left join organization o on j.organization_id = o.id and o.status = 1 " +
            "where j.status = 1 " +
            "order by j.post_date desc " +
            "limit 9 ";

    public static final String GET_JOB_BY_ID = "select j.id, j.position, j.about, j.requirement, j.salary_min, j.salary_max, " +
            "   j.post_date, j.deadline,  " +
            "    j.address_id,  " +
            "    a.country_id, cr.name country_name, " +
            "    a.city_id, ct.name city_name, " +
            "    a.info, " +
            "    j.job_type_id, jp.name job_type_name, " +
            "    j.experience_min, j.experience_max, " +
            "    j.job_category_id, jc.name job_category_name, jc.icon_class, " +
            "    j.idate, j.udate, " +
            "    j.user_id, u.name, u.surname, u.email, u.phone, u.mobile, " +
            "    o.id organization_id, o.name organization_name, " +
            "   o.email org_email, o.phone org_phone, u.mobile org_mobile " +
            "from job j join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "   join job_type jp on j.job_type_id = jp.id and jp.status = 1 " +
            "    join address a on j.address_id = a.id and a.status = 1 " +
            "    join country cr on a.country_id = cr.id and cr.status = 1 " +
            "    join city ct on a.city_id = ct.id and ct.status = 1 " +
            "    join user u on j.user_id = u.id and u.status = 1 " +
            "    left join organization o on j.organization_id = o.id and o.status = 1 " +
            "where j.id = :job_id and j.status = 1";

    public static final String DELETE_JOB_BY_ID = "update job set status = 0 where id = :job_id and status = 1";

    public static final String GET_ALL_JOBS_PAGING = "select j.id,j.position,j.about,j.requirement,j.salary_min,j.salary_max,j.post_date,j.deadline,j.address_id,j.job_category_id, " +
            "j.idate,j.udate,j.user_id,u.name user_name,u.surname,u.mobile,u.phone,u.email,ad.country_id,ad.city_id,ad.info,cr.name country_name,ct.name city_name, " +
            "jt.id job_type_id, " +
            "j.experience_min,j.experience_max, " +
            "jc.name job_category_name,jc.icon_class, " +
            "o.name organization_name,o.id organization_id,o.email org_email,o.phone org_phone,o.mobile org_mobile " +
            "from  job j left join organization o on j.organization_id = o.id and o.status = 1 and j.status = 1 " +
            "join address ad on j.address_id = ad.id and ad.status = 1 " +
            "join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "join job_type jt on j.job_type_id = jt.id and jt.status = 1 " +
            "join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "join user u on j.user_id = u.id and u.status = 1 " +
            "order by j.idate desc " +
            "limit %d, 8 ";

    public static final String GET_COMPANY_JOBS_COUNT_PAGE = "select count(j.id) count " +
            "            from job j left join organization o on j.organization_id = o.id and j.status = 1 and o.status = 1 " +
            "            where o.id = :company_id ";

    public static final String GET_PAGE_COUNT_JOBS = "select count(j.id) count " +
            "            from job j " +
            "            where j.status = 1 ";

    public static final String GET_JOB_DETAIL_BY_ID = "select j.id,j.position,j.about,j.requirement,j.salary_min,j.salary_max,j.post_date,j.deadline,j.address_id,j.job_category_id, " +
            "j.idate,j.udate,j.user_id,u.name user_name,u.surname,u.mobile,u.phone,u.email,ad.country_id,ad.city_id,ad.info,cr.name country_name,ct.name city_name, " +
            "jt.id job_type_id, " +
            "j.experience_min,j.experience_max, " +
            "jc.name job_category_name,jc.icon_class, " +
            "o.name organization_name,o.id organization_id,o.email org_email,o.phone org_phone,o.mobile org_mobile " +
            "from  job j left join organization o on j.organization_id = o.id and o.status = 1 and j.status = 1 " +
            "join address ad on j.address_id = ad.id and ad.status = 1 " +
            "join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "join job_type jt on j.job_type_id = jt.id and jt.status = 1 " +
            "join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "join user u on j.user_id = u.id and u.status = 1 " +
            "where j.id = :job_id ";
}
