package az.employee.repository.jdbc.sql;

public class CandidateQueries {

    public static final String GET_CANDIDATE_BY_ID = "select u.name, u.surname, u.user_status_id, u.email, u.password, " +
            "            u.phone, u.mobile, " +
            "            c.id, c.user_id, c.birth_date, c.profile_image, c.video_file,c. position, c.salary_min, c.salary_max, " +
            "            c.address_id,ad.info, " +
            "            ad.city_id,ct.name city_name, " +
            "            ad.country_id,cr.name country_name, " +
            "            c.degree_id,el.name education_level, " +
            "            c.github, c.facebook, c.twitter, c.linkedin, c.instagram,c.gitlab, " +
            "            c.idate, c.udate " +
            "            from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1 " +
            "            join address ad on c.address_id = ad.id and ad.status = 1 " +
            "            join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "            join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "            left join education_level el on c.degree_id = el.id and el.status = 1 " +
            "        where c.id = :candidate_id ";

    public static final String ADD_CANDIDATE = "insert into candidate(id, user_id, birth_date, address_id, " +
            "degree_id, position, salary_min, salary_max, github, gitlab, facebook, twitter, linkedin, instagram, status) " +
            "values(null, :user_id, :birth_date, :address_id, :degree_id, :position, :salary_min, :salary_max, " +
            ":github, :gitlab, :facebook, :twitter, :linkedin, :instagram, 1)";

    public static final String UPDATE_CANDIDATE = "update candidate " +
            "set birth_date = :birth_date, degree_id = :degree_id, " +
            "   position = :position, salary_min = :salary_min, salary_max = :salary_max, " +
            "   github = :github, facebook = :facebook, twitter = :twitter, " +
            "    linkedin = :linkedin, instagram = :instagram, gitlab = :gitlab, " +
            "    udate = current_timestamp() " +
            "where id = :id and status = 1";

    public static final String GET_CANDIDATE_LIST = "select c.id, u.name, u.surname, u.user_status_id, u.email, u.password, " +
            "        u.phone, u.mobile, " +
            "        c.user_id, c.birth_date, c.profile_image, c.video_file, c.position, c.salary_min, c.salary_max, " +
            "        c.address_id,ad.info, " +
            "        ad.city_id, ct.name city_name, " +
            "        ad.country_id, cr.name country_name, " +
            "        c.degree_id, el.name education_level, " +
            "        c.github, c.facebook, c.twitter, c.linkedin, c.instagram, c.gitlab, " +
            "        c.idate, c.udate " +
            "from candidate c join user u on c.user_id = u.id and c.status = 1 and u.status = 1 " +
            "        join user_role ur on ur.user_id = u.id and ur.status = 1 " +
            "        join address ad on c.address_id = ad.id and ad.status = 1 " +
            "        join country cr on ad.country_id = cr.id and cr.status = 1 " +
            "        join city ct on ad.city_id = ct.id and ct.status = 1 " +
            "        left join education_level el on c.degree_id = el.id and el.status = 1 " +
            "where ur.role_id = 1 and concat(u.name, u.surname, u.email, ifnull(u.phone,\"\"), ifnull(u.mobile,\"\"), ifnull(c.birth_date,\"\"), ct.name,el.name, ifnull(c.position,\"\")) like :search " +
            "order by %s %s " +
            "limit %d, %d";

    public static final String GET_CANDIDATE_COUNT = "select count(id) cnt " +
            "from candidate " +
            "where status = 1";

    public static final String GET_CANDIDATE_SKILL_LIST = "select s.id, s.candidate_id, s.name, s.level, s.info, s.idate, s.udate " +
            "from skill s " +
            "join candidate c on s.candidate_id = c.id and s.status = 1 and c.status = 1 " +
            "where s.candidate_id = :candidate_id";

    public static final String GET_CANDIDATE_TAGS = "select t.id, t.name, t.idate, t.udate " +
            "            from tag_owner tr join candidate c on tr.owner_id = c.id and tr.status = 1 and c.status = 1 " +
            "            join tag t on tr.tag_id = t.id and t.status = 1 " +
            "            where tr.owner_id = :candidate_id ";

    public static final String UPDATE_CANDIDATE_IMAGE = "update candidate " +
            "set profile_image = :image " +
            "where id = :id and status = 1";

}
