package az.employee.repository;

import az.employee.domain.*;

import java.util.List;

public interface CommonRepository {

    List<Country> getCountryList();

    List<City> getCityListByCountryId(long countryId);

    List<EducationOrganization> getEducationOrganizationList();

    List<EducationLevel> getEducationLevelList();

    List<Language> getLanguageList();
}
