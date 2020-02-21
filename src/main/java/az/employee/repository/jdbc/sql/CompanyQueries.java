package az.employee.repository.jdbc.sql;

public class CompanyQueries {

    public static final String GET_COMPANY_LIST_PAGING_WEB = "select o.id,o.name, " +
            "   o.industry_id,i.name industry_name, " +
            "   o.head_office,o.create_date,o.num_of_employee,o.idate,o.udate, " +
            "   o.annual_revenue,o.is_global,o.rating,o.about, " +
            "   o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram, " +
//            "   ct.name city_name,cr.name country_name, " +
            "   count(j.id) count " +
            "   from organization o join industry i on o.industry_id = i.id and o.status = 1 and i.status = 1 " +
            "   left join job j on j.organization_id = o.id and j.status = 1 " +
//            "   join address ad on j.address_id = ad.id and ad.status = 1 " +
//            "   join country cr on ad.country_id = cr.id and cr.status = 1 " +
//            "   join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "   group by o.id,o.name, " +
            "   o.industry_id,i.name, " +
            "   o.head_office,o.create_date,o.num_of_employee, " +
            "   o.annual_revenue,o.is_global,o.rating,o.about, " +
            "   o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram " +
//            "   ct.name,cr.name " +
            "   order by o.idate desc " +
            "   limit %d ,8 ";

    public static final String GET_COMPANY_BY_ID = "select o.id,o.name, " +
            "   o.industry_id,i.name industry_name , " +
            "   o.head_office,o.create_date,o.num_of_employee,o.idate,o.udate, " +
            "   o.annual_revenue,o.is_global,o.rating,o.about, " +
            "   o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram, " +
            "   count(j.id) count " +
            "   from organization o join industry i on o.industry_id = i.id and o.status = 1 and i.status = 1 " +
            "   left join job j on j.organization_id = o.id and j.status = 1 " +
            "where o.id = :company_id " +
            "   group by o.id,o.name, " +
            "   o.industry_id,i.name, " +
            "   o.head_office,o.create_date,o.num_of_employee, " +
            "   o.annual_revenue,o.is_global,o.rating,o.about, " +
            "   o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram ";

    public static final String GET_COMPANY_PAGE_COUNT = "select count(o.id) " +
            "  from organization o where status = 1";

    public static final String GET_COMPANY_JOBS_BY_ID = "select j.id,j.position,j.about,j.requirement,j.salary_min,j.salary_max,j.post_date,j.deadline,j.address_id,j.job_category_id,  " +
            "           j.idate,j.udate,j.user_id,u.name user_name,u.surname,u.mobile,u.phone,u.email,ad.country_id,ad.city_id,ad.info,cr.name country_name,ct.name city_name, " +
            "           jt.id job_type_id, " +
            "           j.experience_min,j.experience_max, " +
            "           jc.name job_category_name,jc.icon_class, " +
            "           o.name organization_name,o.id organization_id,o.email org_email,o.phone org_phone,o.mobile org_mobile " +
            "           from organization o join job j on j.organization_id = o.id and o.status = 1 and j.status = 1 " +
            "           join address ad on j.address_id = ad.id and ad.status = 1 " +
            "           join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "           join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "           join job_type jt on j.job_type_id = jt.id and jt.status = 1 " +
            "           join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "           join user u on j.user_id = u.id and u.status = 1 " +
            "           where o.id = :organization_id ";

    public static final String GET_COMPANY_JOBS_BY_ID_PAGING = "select j.id,j.position,j.about,j.requirement,j.salary_min,j.salary_max,j.post_date,j.deadline,j.address_id,j.job_category_id,  " +
            "           j.idate,j.udate,j.user_id,u.name user_name,u.surname,u.mobile,u.phone,u.email,ad.country_id,ad.city_id,ad.info,cr.name country_name,ct.name city_name, " +
            "           jt.id job_type_id, " +
            "           j.experience_min,j.experience_max, " +
            "           jc.name job_category_name,jc.icon_class, " +
            "           o.name organization_name,o.id organization_id,o.email org_email,o.phone org_phone,o.mobile org_mobile " +
            "           from organization o join job j on j.organization_id = o.id and o.status = 1 and j.status = 1 " +
            "           join address ad on j.address_id = ad.id and ad.status = 1 " +
            "           join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "           join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "           join job_type jt on j.job_type_id = jt.id and jt.status = 1 " +
            "           join job_category jc on j.job_category_id = jc.id and jc.status = 1 " +
            "           join user u on j.user_id = u.id and u.status = 1 " +
            "           where o.id = :company_id " +
            "           limit %d, 6 ";

    public static final String GET_COMPANY_COUNT_ADMIN = "select count(id) " +
            "from organization where status = 1";

    public static final String GET_COMPANY_SEARCH_COUNT_ADMIN = "select count(j.id) count " +
            "from organization o join industry i on o.industry_id = i.id and o.status = 1 and i.status = 1 " +
            "left join job j on j.organization_id = o.id and j.status = 1 " +
            "where concat(o.name,i.name) like :searchWord ";

    public static final String GET_COMPANY_LIST_ADMIN = "select o.id,o.name, " +
            "o.industry_id,i.name industry_name , " +
            "o.head_office, o.create_date, o.num_of_employee, o.idate, o.udate, " +
            "o.annual_revenue, o.is_global, o.rating,o.about, " +
            "o.mobile, o.website, o.email, o.facebook, o.twitter, o.linkedin, o.instagram, " +
            "count(j.id) count " +
            "from organization o join industry i on o.industry_id = i.id and o.status = 1 and i.status = 1  " +
            "left join job j on j.organization_id = o.id and j.status = 1 " +
            "where concat(o.name,o.head_office) like :searchWord " +
            "group by o.id,o.name, " +
            "o.industry_id,i.name, " +
            "o.head_office,o.create_date,o.num_of_employee, " +
            "o.annual_revenue,o.is_global,o.rating,o.about, " +
            "o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram " +
            "order by %s %s " +
            "limit %d, %d ";

    public static final String GET_COMPANIES_COUNT = " select count(id) count from organization";

    public static final String GET_FILTERED_COMPANIES_COUNT = "select  count(o.id) count " +
            "from organization o   join industry i on o.industry_id = i.id and i.status=1      \n" +
            "where o.status=1 and concat(o.id, o.name, i.name  , o.head_office, ifnull(o.create_date,''), ifnull(o.num_of_employee,'') " +
            " ,ifnull(o.annual_revenue,'') ,  o.is_global, ifnull(o.rating,'') , ifnull(o.about,'')  , ifnull(o.phone,'')" +
            " , ifnull(o.mobile,'')  , \n" +
            "  ifnull(o.website,'') ,  ifnull(o.email,'') , o.idate, ifnull(o.udate,'')  ) like :search \n";

    public static final String GET_FILTERED_COMPANIES = "select o.id,o.name, " +
            "o.industry_id,i.name industry_name , " +
            "o.head_office, o.create_date, o.num_of_employee, o.idate, o.udate, " +
            "o.annual_revenue, o.is_global, o.rating,o.about, " +
            "o.mobile, o.website, o.email, o.facebook, o.twitter, o.linkedin, o.instagram, " +
            "count(j.id) count " +
            "from organization o join industry i on o.industry_id = i.id and o.status = 1 and i.status = 1  " +
            "left join job j on j.organization_id = o.id and j.status = 1 " +
            "where concat(o.name,o.head_office) like :search " +
            "group by o.id,o.name, " +
            "o.industry_id,i.name, " +
            "o.head_office,o.create_date,o.num_of_employee, " +
            "o.annual_revenue,o.is_global,o.rating,o.about, " +
            "o.mobile,o.website,o.email,o.facebook,o.twitter,o.linkedin,o.instagram " +
            "order by {sortColumn} {sortDirection} " +
            "limit :start, :length ";

    public static final String DELETE_COMPANY = "update organization set status = 0 " +
            " where id= :id and status=1";

    public static final String ADD_COMPANY = "  insert into organization(id, name , industry_id, head_office, " +
            " create_date, num_of_employee, annual_revenue, is_global, rating, about,  " +
            "  phone, mobile, website, email, facebook, twitter, linkedin, instagram) " +
            "  values(null,:name,:industry_id,:head_office,:create_date, :num_of_employee, " +
            " :annual_revenue, :is_global, :rating, :about, :phone, :mobile ,:website, :email," +
            " :facebook , :twitter, :linkedin, :instagram )";

    public static final String UPDATE_COMPANY_BY_ID = " update organization set name = :name, " +
            " industry_id = :industry_id  ,head_office = :head_office , " +
            "  create_date= :create_date ,num_of_employee = :num_of_employee ,is_global = :is_global, " +
            "  rating = :rating , about = :about, annual_revenue = :annual_revenue , create_date = :create_date," +
            "  udate = :update ,  mobile = :mobile , phone = :phone , website = :website ,email = :email , " +
            "  facebook =:facebook ,twitter = :twitter , linkedin = :linkedin , instagram = :instagram  " +
            "  where id= :id and status=1 ";
}
