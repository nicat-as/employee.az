package az.employee.controller;


import az.employee.domain.*;
import az.employee.repository.CompanyRepository;
import az.employee.service.CandidateService;
import az.employee.service.CommonService;
import az.employee.service.CompanyService;
import az.employee.validator.CompanyRegistrationFormValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private CompanyRegistrationFormValidator companyRegistrationFormValidator;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        Object target = binder.getTarget();

        if (target != null) {
            if (target.getClass().equals(Company.class)) {
                binder.setValidator(companyRegistrationFormValidator);
            }
        }
    }

    @Autowired
    private CommonService commonService;


    @GetMapping({"/", "/index"})
    public String index() {
        return "admin/hrms/index";
    }

    @GetMapping("/companies")
    public String departments() {
        return "admin/hrms/companies";
    }

    @GetMapping("/candidates")
    public String employee() {
        return "admin/hrms/candidates";
    }

    @GetMapping("getCompaniesList")
    @ResponseBody
    public DataTableResult getCompaniesList(@RequestParam(name = "draw") int draw,
                                            @RequestParam(name = "start") int start,
                                            @RequestParam(name = "length") int length,
                                            @RequestParam(name = "order[0][column]") int sortColumn,
                                            @RequestParam(name = "order[0][dir]") String sortDirection,
                                            @RequestParam(name = "search[value]") String searchValue) {
        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(searchValue);

        System.out.println(dataTableRequest);
        DataTableResult result = companyService.getCompanies(dataTableRequest);
        return result;
    }


    @GetMapping("getAjaxUser")
    @ResponseBody
    public DataTableResult getAjaxData(@RequestParam(name = "draw") int draw,
                                       @RequestParam(name = "start") int start,
                                       @RequestParam(name = "length") int length,
                                       @RequestParam(name = "order[0][column]") int sortColumn,
                                       @RequestParam(name = "order[0][dir]") String sortDirection,
                                       @RequestParam(name = "search[value]") String searchValue) {
        System.out.println("start");
        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(searchValue);

        return candidateService.getDataTableResponse(dataTableRequest);

    }

    @GetMapping("deletecompany")
    @ResponseBody
    public boolean deletecompany(@RequestParam(name = "id") long id) {
        return companyService.deleteCompany(id);
    }

    @GetMapping("viewCompany")
    @ResponseBody
    public Company getCompanyById(@RequestParam(name = "id") long id) {
        Optional<Company> optionalCompany = companyService.getCompanyById(id);

        if (optionalCompany.isPresent()) {
            return optionalCompany.get();
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Company with id " + id + " not found!");
        }

    }

    @GetMapping("/addCompany")
    public ModelAndView addCompany() {
        ModelAndView modelAndView = new ModelAndView("/admin/hrms/registerCompany");
        List<String> industryList = companyService.getIndustryFields();
        Company company = new Company();
        modelAndView.addObject("companyRegistrationForm", company);
        modelAndView.addObject("industryList", industryList);
        return modelAndView;
    }

    @PostMapping("/addCompany")
    public ModelAndView addCompany(@ModelAttribute("companyRegistrationForm") @Validated Company form,
                                   BindingResult validationResult) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(form);
        if (validationResult.hasErrors()) {
            List<String> industryList = companyService.getIndustryFields();
            modelAndView.addObject("industryList", industryList);
            modelAndView.setViewName("/admin/hrms/registerCompany");
        } else {
            try {
                companyService.addCompany(form);
            } catch (Exception e) {
                e.printStackTrace();
                modelAndView.addObject("errorMessage", "Error adding Company");
            }
            modelAndView.setViewName("admin/hrms/companyRegister-result");
        }

        return modelAndView;
    }

    @GetMapping("/updateCompany")
    public ModelAndView updateCompany(@RequestParam(name = "id") long id) {
        ModelAndView modelAndView = new ModelAndView("/admin/hrms/updateCompany");
        try {
            Optional<Company> optionalCompany = companyService.getCompanyById(id);
            if (optionalCompany.isPresent()) {
                Company company = optionalCompany.get();
                System.out.println(company);
                modelAndView.addObject("companyRegistrationForm", company);
                List<String> industryList = companyService.getIndustryFields();
                modelAndView.addObject("industryList", industryList);
            }

        } catch (Exception e) {
            modelAndView.setViewName("admin/authentication/error404");
        }
        return modelAndView;
    }

    @PostMapping("/updateCompany")
    public ModelAndView updateCompany(@ModelAttribute("companyRegistrationForm") @Validated Company form,
                                      BindingResult validationResult) {
        ModelAndView modelAndView = new ModelAndView();
        if (validationResult.hasErrors()) {
            List<String> industryList = companyService.getIndustryFields();
            modelAndView.addObject("industryList", industryList);
            modelAndView.setViewName("/admin/hrms/updateCompany");
        } else {
            try {
                companyService.updateCompany(form);
            } catch (Exception e) {
                e.printStackTrace();
                modelAndView.addObject("errorMessage", e.getLocalizedMessage());
            }
            modelAndView.setViewName("admin/hrms/companyRegister-result");
        }
        return modelAndView;
    }

    @GetMapping("getCompaniesgrid")
    @ResponseBody
    public PageResponse<Company> getCompaniesgrid(@RequestParam(name = "page", required = false, defaultValue = "1") int page,
                                                  @RequestParam(name = "search", required = false, defaultValue = "") String search,
                                                  @RequestParam(name = "length", required = false, defaultValue = "12") int length,
                                                  @RequestParam(name = "columnDir", required = false, defaultValue = "asc") String columnDir,
                                                  @RequestParam(name = "column", required = false, defaultValue = "1") String column) {
        PageRequest request = new PageRequest();
        request.setFilter(search);
        request.setSortColumn(column);
        request.setSortOrder(columnDir);
        request.setSize(length);
        request.setPage(page);
        PageResponse<Company> companyPageResponse = companyService.getCompanyPage(request);
        return companyPageResponse;
    }

    @GetMapping("/addCandidate")
    public ModelAndView addCandidate(HttpSession session) {
//        ModelAndView modelAndView = new ModelAndView("admin/hrms/addCandidate");
        ModelAndView modelAndView = new ModelAndView("admin/hrms/add-candidate-rest");
        List<Country> countries = commonService.getCountryList();

        if (session.getAttribute("newCandidate") == null) {
            Candidate newCandidate = new Candidate();
            session.setAttribute("newCandidate", newCandidate);
        }

        List<EducationOrganization> educationOrganizations = commonService.getEducationOrganizationList();
        modelAndView.addObject("countryList", countries);
        return modelAndView;
    }

    @GetMapping("/getCityList")
    @ResponseBody
    public List<City> getCityListByCountryId(@RequestParam(name = "country_id") long countryId) {
        return commonService.getCityListByCountryId(countryId);
    }

    @PostMapping("/addJobHistory")
    @ResponseBody
    public long addJobHistory(
            HttpSession session,
            @RequestBody JobHistory jobHistory) {
        System.out.println("add to session job history = " + jobHistory);
        Candidate candidate = (Candidate) session.getAttribute("newCandidate");

        jobHistory.setId(candidate.getJobHistoryList().size() + 1);
        candidate.getJobHistoryList().add(jobHistory);
//        session.setAttribute("newCandidate", candidate);

        return jobHistory.getId();
    }

    @PostMapping("/deleteJobHistory")
    public void deleteJobHistory(
            HttpSession session,
            @RequestParam(name = "id") long id
    ) {
        System.out.println("delete job history from session, id = " + id);
        Candidate candidate = (Candidate) session.getAttribute("newCandidate");

        List<JobHistory> jobHistoryList = candidate.getJobHistoryList();
        for (JobHistory jobHistory : jobHistoryList) {
            if (jobHistory.getId() == id) {
                jobHistoryList.remove(jobHistory);
            }
        }
    }

    @PostMapping("/updateJobHistory")
    @ResponseBody
    public long updateJobHistory(
            HttpSession session,
            @RequestBody JobHistory jobHistory
    ) {
        System.out.println("update to session job history = " + jobHistory);
        Candidate candidate = (Candidate) session.getAttribute("newCandidate");

        List<JobHistory> jobHistoryList = candidate.getJobHistoryList();
        for (JobHistory jh : jobHistoryList) {
            if (jh.getId() == jobHistory.getId()) {
                jh.setStartDate(jobHistory.getStartDate());
                jh.setEndDate(jobHistory.getEndDate());
                jh.setCompany(jobHistory.getCompany());
                jh.setPosition(jobHistory.getPosition());
                jh.setCountry(jobHistory.getCountry());
                jh.setCity(jobHistory.getCity());
                jh.setInfo(jobHistory.getInfo());
            }
        }
        return jobHistory.getId();
    }

    @GetMapping("/getCompanyList")
    @ResponseBody
    public DataTableResult getCompanyList(@RequestParam(name = "draw") int draw,
                                          @RequestParam(name = "start") int start,
                                          @RequestParam(name = "length") int length,
                                          @RequestParam(name = "order[0][column]") int sortColumn,
                                          @RequestParam(name = "order[0][dir]") String sortDirection,
                                          @RequestParam(name = "search[value]") String searchValue) {

        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(searchValue);

        System.out.println("request = " + dataTableRequest);
        return companyService.getDataTableResult(dataTableRequest);
    }

    @PostMapping("/addCandidate")
    public ModelAndView addCandidate(
            @RequestParam(name = "name") String name,
            @RequestParam(name = "surname") String surname,
            @RequestParam(name = "email") String email,
            HttpSession session
    ) {
        Candidate candidate = (Candidate) session.getAttribute("newCandidate");
        candidate.getUser().setName(name);
        candidate.getUser().setSurname(surname);

        // todo add candidate rest
        ModelAndView modelAndView = new ModelAndView("admin/candidate-success");

        RestTemplate restTemplate = new RestTemplate();

        String url = "http://localhost:8080/rest/candidates/";
        Candidate candidateFromRest = restTemplate.postForObject(url, candidate, Candidate.class);
        System.out.println("candidate response from rest api = " + candidateFromRest);

        return modelAndView;
    }


//    @GetMapping("/viewCompany")
//    @ResponseBody
//    public Company getCompanyById(
//            @RequestParam(name = "id") long id
//    )

}
