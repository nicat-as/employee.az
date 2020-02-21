package az.employee.service;

import az.employee.domain.Skill;

import java.util.List;
import java.util.Optional;

public interface SkillService {

    Skill addSkill(Skill skill);

    Optional<Skill> getSkillById(long skillId);

    Skill updateSkill(Skill skill);

    void deleteSkill(long skillId);

    List<Skill> getSkillList(long candidateId);
}
