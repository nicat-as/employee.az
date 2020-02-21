package az.employee.repository.jdbc.sql;

public class SkillQueries {

    public static final String ADD_SKILL = "insert into skill(id, candidate_id, name, level, info) " +
            "values(null, :candidate_id, :name, :level, :info)";

    public static final String GET_SKILL_BY_ID = "select s.id, s.candidate_id, s.name, s.level, s.info, s.idate, s.udate " +
            "from skill s " +
            "join candidate c on s.candidate_id = c.id and c.status = 1 " +
            "where s.id = :skill_id and s.status = 1";

    public static final String UPDATE_SKILL_BY_ID = "update skill " +
            "set name = :name, level = :level, info = :info " +
            "where id = :skill_id and status = 1";

    public static final String DELETE_SKILL_BY_ID = "update skill " +
            "set status = 0 " +
            "where id = :skill_id and status = 1";

    public static final String GET_SKILL_LIST = "select s.id, s.candidate_id, s.name, s.level, s.info, s.idate, s.udate " +
            "from skill s " +
            "join candidate c on s.candidate_id = c.id and c.status = 1 " +
            "where s.candidate_id = :candidate_id and s.status = 1";
}
