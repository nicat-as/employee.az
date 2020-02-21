package az.employee.domain;

import java.io.Serializable;
import java.util.StringJoiner;

public class Skill extends BaseDomainClass implements Serializable {

    private static final long serialVersionUID = 6562746182196186175L;

    private long candidateId;
    private String name;
    private int level;
    private String info;

    public Skill() {
        this.candidateId = 0L;
        this.name = "";
        this.level = 0;
        this.info = "";
    }

    public long getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(long candidateId) {
        this.candidateId = candidateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Skill.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("candidateId=" + candidateId)
                .add("name='" + name + "'")
                .add("level=" + level)
                .add("info='" + info + "'")
                .add("insertDate=" + insertDate)
                .add("lastUpdate=" + lastUpdate)
                .toString();
    }
}
