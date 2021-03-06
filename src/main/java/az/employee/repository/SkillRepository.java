package az.employee.repository;

import az.employee.domain.Skill;

import java.util.List;
import java.util.Optional;

public interface SkillRepository {

    Skill addSkill(Skill skill);

    Optional<Skill> getSkillById(long skillId);

    Skill updateSkill(Skill skill);

    void deleteSkill(long skillId);

    List<Skill> getSkillList(long candidateId);
}
