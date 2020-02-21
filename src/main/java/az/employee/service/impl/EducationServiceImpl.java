package az.employee.service.impl;

import az.employee.domain.Education;
import az.employee.repository.EducationRepository;
import az.employee.service.EducationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class EducationServiceImpl implements EducationService {

    @Autowired
    private EducationRepository educationRepository;

    @Transactional
    @Override
    public Education addEducation(Education education) {
        return educationRepository.addEducation(education);
    }

    @Override
    public Optional<Education> getEducationById(long educationId) {
        return educationRepository.getEducationById(educationId);
    }

    @Transactional
    @Override
    public Education updateEducation(Education education) {
        return educationRepository.updateEducation(education);
    }

    @Transactional
    @Override
    public void deleteEducation(long educationId) {
        educationRepository.deleteEducation(educationId);
    }

    @Override
    public List<Education> getEducationList(long candidateId) {
        return educationRepository.getEducationList(candidateId);
    }
}
