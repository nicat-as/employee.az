package az.employee.repository.jdbc.sql;

public class EducationQueries {

    public static final String ADD_EDUCATION = "insert into education(id, candidate_id, education_level_id, " +
            "start_date, end_date, country_id, " +
            "education_org_id, education_org_name, graduated) " +
            "values(null, :candidate_id, :education_level_id, :start_date, :end_date, " +
            ":country_id, :education_org_id, :education_org_name, :graduated)";

    public static final String GET_EDUCATION_BY_ID = "select e.id, e.candidate_id, " +
            "e.education_level_id, el.name edu_level_name, " +
            "e.start_date, e.end_date, " +
            "e.country_id, cr.name country_name, " +
            "e.education_org_id, eo.name edu_org_name, e.education_org_name, " +
            "e.graduated, e.idate, e.udate " +
            "from education e " +
            "join candidate c on e.candidate_id = c.id and c.status = 1 " +
            "join education_level el on e.education_level_id = el.id and el.status = 1 " +
            "join country cr on e.country_id = cr.id and cr.status = 1 " +
            "join education_org eo on e.education_org_id = eo.id and eo.status = 1 " +
            "where e.id = :education_id and e.status = 1";

    public static final String UPDATE_EDUCATION_BY_ID = "update education " +
            "set education_level_id = :education_level_id, start_date = :start_date, end_date = :end_date, " +
            "country_id = :country_id, education_org_id = :education_org_id, education_org_name = :education_org_name, " +
            "graduated = :graduated " +
            "where id = :education_id and status = 1";

    public static final String DELETE_EDUCATION_BY_ID = "update education " +
            "set status = 0 " +
            "where id = :education_id and status = 1";

    public static final String GET_EDUCATION_LIST = "select e.id, e.candidate_id, e.education_level_id, " +
            "el.name edu_level_name, e.start_date, e.end_date, e.country_id, cr.name country_name, " +
            "e.education_org_id, eo.name edu_org_name, e.education_org_name,  e.graduated, e.idate, e.udate " +
            "from education e " +
            "join candidate c on e.candidate_id = c.id and c.status = 1 " +
            "join education_level el on e.education_level_id = el.id and el.status = 1 " +
            "join country cr on e.country_id = cr.id and cr.status = 1 " +
            "join education_org eo on e.education_org_id = eo.id and eo.status = 1 " +
            "where candidate_id = :candidate_id and e.status = 1";
}
