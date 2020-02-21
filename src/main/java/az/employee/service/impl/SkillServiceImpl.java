package az.employee.service.impl;

import az.employee.domain.Skill;
import az.employee.repository.SkillRepository;
import az.employee.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class SkillServiceImpl implements SkillService {

    @Autowired
    private SkillRepository skillRepository;

    @Transactional
    @Override
    public Skill addSkill(Skill skill) {
        return skillRepository.addSkill(skill);
    }

    @Override
    public Optional<Skill> getSkillById(long skillId) {
        return skillRepository.getSkillById(skillId);
    }

    @Transactional
    @Override
    public Skill updateSkill(Skill skill) {
        return skillRepository.updateSkill(skill);
    }

    @Transactional
    @Override
    public void deleteSkill(long skillId) {
        skillRepository.deleteSkill(skillId);
    }

    @Override
    public List<Skill> getSkillList(long candidateId) {
        return skillRepository.getSkillList(candidateId);
    }
}
