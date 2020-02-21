package az.employee.service.impl;

import az.employee.domain.LanguageSkill;
import az.employee.repository.LanguageSkillRepository;
import az.employee.service.LanguageSkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class LanguageSkillServiceImpl implements LanguageSkillService {

    @Autowired
    private LanguageSkillRepository languageSkillRepository;

    @Transactional
    @Override
    public LanguageSkill addLanguageSkill(LanguageSkill languageSkill) {
        return languageSkillRepository.addLanguageSkill(languageSkill);
    }

    @Override
    public Optional<LanguageSkill> getLanguageSkillById(long languageSkillId) {
        return languageSkillRepository.getLanguageSkillById(languageSkillId);
    }

    @Transactional
    @Override
    public LanguageSkill updateLanguageSkill(LanguageSkill languageSkill) {
        return languageSkillRepository.updateLanguageSkill(languageSkill);
    }

    @Transactional
    @Override
    public void deleteLanguageSkill(long languageSkillId) {
        languageSkillRepository.deleteLanguageSkill(languageSkillId);
    }

    @Override
    public List<LanguageSkill> getLanguageSkillList(long candidateId) {
        return languageSkillRepository.getLanguageSkillList(candidateId);
    }
}
