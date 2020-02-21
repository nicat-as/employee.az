package az.employee.repository;

import az.employee.domain.LanguageSkill;

import java.util.List;
import java.util.Optional;

public interface LanguageSkillRepository {

    LanguageSkill addLanguageSkill(LanguageSkill languageSkill);

    Optional<LanguageSkill> getLanguageSkillById(long languageSkillId);

    LanguageSkill updateLanguageSkill(LanguageSkill languageSkill);

    void deleteLanguageSkill(long languageSkillId);

    List<LanguageSkill> getLanguageSkillList(long candidateId);
}
