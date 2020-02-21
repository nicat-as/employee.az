package az.employee.rest;

import az.employee.domain.*;
import az.employee.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping(value = {"/rest/", "/admin/rest/"})
@RestController
public class CommonRestController {

    @Autowired
    private CommonService commonService;

    @RequestMapping(value = {"/country", "/country/"})
    public List<Country> getCountryList() {
        return commonService.getCountryList();
    }

    @RequestMapping(value = {"/city/{countryId}", "/city/{countryId}/"})
    public List<City> getCityList(@PathVariable(name = "countryId") long countryId) {
        return commonService.getCityListByCountryId(countryId);
    }

    @GetMapping(value = {"/degree", "/degree/"})
    public List<EducationLevel> getEducationLevelList() {
        return commonService.getEducationLevelList();
    }

    @GetMapping(value = {"/education-organization", "/education-organization/"})
    public List<EducationOrganization> getEducationOrganizationList() {
        return commonService.getEducationOrganizationList();
    }

    @GetMapping(value = {"/language", "/language/"})
    public List<Language> getLanguageList() {
        return commonService.getLanguageList();
    }
}
