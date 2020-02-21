package az.employee.service;

import az.employee.domain.*;

import java.util.List;

public interface CommonService {

    List<Country> getCountryList();

    List<City> getCityListByCountryId(long countryId);

    List<EducationOrganization> getEducationOrganizationList();

    List<EducationLevel> getEducationLevelList();

    List<Language> getLanguageList();
}
