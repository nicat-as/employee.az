package az.employee.repository.jdbc.sql;

public class LanguageSkillQueries {

    public static final String ADD_LANGUAGE_SKILL = "insert into language_skill(id, candidate_id, " +
            "language_id, reading, speaking, writing, listening) " +
            "values(null, :candidate_id, :language_id, :reading, :speaking, :writing, :listening)";

    public static final String GET_LANGUAGE_SKILL_BY_ID = "select ls.id, ls.candidate_id, ls.language_id, " +
            "l.name language_name, ls.reading, ls.speaking, ls.writing, ls.listening, ls.idate, ls.udate " +
            "from language_skill ls " +
            "join candidate c on ls.candidate_id = c.id and c.status = 1 " +
            "join language l on ls.language_id = l.id and l.status = 1 " +
            "where ls.id = :language_skill_id and ls.status = 1";

    public static final String UPDATE_LANGUAGE_SKILL_BY_ID = "update language_skill " +
            "set language_id = :language_id, reading = :reading, speaking = :speaking, " +
            "writing = :writing, listening = :listening " +
            "where id = :language_skill_id and status = 1";

    public static final String DELETE_LANGUAGE_SKILL_BY_ID = "update language_skill " +
            "set status = 0 " +
            "where id = :language_skill_id and status = 1";

    public static final String GET_LANGUAGE_SKILL_LIST = "select ls.id, ls.candidate_id, ls.language_id, " +
            "l.name language_name, ls.reading, ls.speaking, ls.writing,  ls.listening, ls.idate, ls.udate " +
            "from language_skill ls " +
            "join candidate c on ls.candidate_id = c.id and c.status = 1 " +
            "join language l on ls.language_id = l.id and l.status = 1 " +
            "where ls.candidate_id = :candidate_id and ls.status = 1";
}
