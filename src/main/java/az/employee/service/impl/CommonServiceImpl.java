package az.employee.service.impl;

import az.employee.domain.*;
import az.employee.repository.CommonRepository;
import az.employee.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommonServiceImpl implements CommonService {

    @Autowired
    private CommonRepository commonRepository;

    @Override
    public List<Country> getCountryList() {
        return commonRepository.getCountryList();
    }

    @Override
    public List<City> getCityListByCountryId(long countryId) {
        return commonRepository.getCityListByCountryId(countryId);
    }

    @Override
    public List<EducationOrganization> getEducationOrganizationList() {
        return commonRepository.getEducationOrganizationList();
    }

    @Override
    public List<EducationLevel> getEducationLevelList() {
        return commonRepository.getEducationLevelList();
    }

    @Override
    public List<Language> getLanguageList() {
        return commonRepository.getLanguageList();
    }


}
