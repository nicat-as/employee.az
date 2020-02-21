package az.employee.controller;


import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.*;
import az.employee.service.*;
import az.employee.util.FormUtility;
import az.employee.validator.CandidateRegistrationFormValidator;
import org.apache.commons.validator.GenericValidator;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static az.employee.domain.Role.*;
import static az.employee.util.SecurityUtility.hasRole;

@RequestMapping("/")
@Controller
public class WebController {

//    @Autowired
//    private CandidateRegistrationFormValidator candidateRegistrationFormValidator;

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private ValidationService validationService;

    @Autowired
    private UserService userService;

    @Autowired
    private JobService jobService;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private EmployeeazConfiguration configuration;
//
//    @InitBinder
//    protected void initBinder(WebDataBinder binder) {
//        Object target = binder.getTarget();
//
//        if (target != null) {
//            if (target.getClass().equals(CandidateRegistrationForm.class)) {
//                binder.setValidator(candidateRegistrationFormValidator);
//            }
//        }
//    }

    @GetMapping("/")
    public ModelAndView index() {

        System.out.println("configuration = " + configuration);
        ModelAndView modelAndView = new ModelAndView("web/index");

        modelAndView.addObject("jobCount", jobService.getAllJobCount());
        modelAndView.addObject("jobCategory", jobService.getJobCategoryCount());
        modelAndView.addObject("recentJob", jobService.getRecentJobList());

        return modelAndView;
    }

    @GetMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("web/register");
        CandidateRegistrationForm form = new CandidateRegistrationForm();
        modelAndView.addObject("candidateRegistrationForm", form);
        return modelAndView;
    }

    @PostMapping("/register_candidate")
    public ModelAndView registerCandidate(Model model,
                                          @ModelAttribute("candidateRegistrationForm") @Validated CandidateRegistrationForm form,
                                          BindingResult validationResult,
                                          RedirectAttributes redirectAttributes
    ) {
        ModelAndView modelAndView = new ModelAndView("web/register");
        System.out.println("form = " + form);

        if (validationResult.hasErrors()) {
            System.out.println("form is invalid, errors = " + validationResult);
            modelAndView.setViewName("web/register");
        } else {
            try {
                System.out.println("candidate reg form is valid = " + form);
                modelAndView.setViewName("web/register_result");
                candidateService.register(FormUtility.getCandidate(form));
            } catch (Exception e) {
                // todo add logging
                e.printStackTrace();
                modelAndView.addObject("errorMessage", "Error on candidate registration");
            }
        }

        return modelAndView;
    }

    @GetMapping("/login")
    public String login() {
        return "web/login";
    }

//    @PostMapping("/login")
//    public ModelAndView checkLogin(
//            @RequestParam(name = "email") String email,
//            @RequestParam(name = "password") String password,
//            HttpServletRequest request
//    ) {
//        ModelAndView modelAndView = new ModelAndView();
//
//        System.out.println("email = " + email);
//        System.out.println("password = " + password);
//
//        Optional<User> optionalUser = userService.getUserByEmail(email);
//        String message = "";
//        if(optionalUser.isPresent()) {
//            // user exists
//            User user = optionalUser.get();
//            System.out.println("user profile = " + user);
//
//            if(BCrypt.checkpw(password, user.getPassword())) {
//                // password is correct
//                // check status
//
//                List<Role> userRoles = userService.getUserRoles(user.getId());
//                user.setRoleList(userRoles);
//
//                if(user.getStatus() == UserStatus.ACTIVE) {
//                    // allow login
//                    // todo redirect to necessary page
//                    String page = "";
//
//                    if(hasRole(user, ADMIN)) {
//                        page = "/admin/";
//                    } else if(hasRole(user, COMPANY)) {
//                        page = "/company/";
//                    } else if(hasRole(user, CANDIDATE)) {
//                        page = "/candidate/";
//                    } else {
//                        page = "/";
//                    }
//
//                    request.getSession().setAttribute("user", user);
//                    request.getSession().setAttribute("loginTime", LocalDateTime.now());
//
//                    System.out.println("redirect to page " + request.getContextPath() + page);
//                    modelAndView.setViewName("redirect:" + page);
//                } else {
//                    System.out.println("user profile is not active");
//                    message = "Zehmet olmasa, profilinizi aktivlesdirin";
//                }
//            } else {
//                // incorrect password
//                System.out.println("incorrect password for user " + email);
//                message = "Email ve ya sifre yanlisdir";
//            }
//
//        } else {
//            // user not found
//            System.out.println("user " + email + " not found");
//            message = "Email ve ya sifre yanlisdir";
//        }
//
//        if(!message.isEmpty()) {
//            System.out.println("forward back to login page with error message");
//            modelAndView.addObject("errorMessage", message);
//            modelAndView.setViewName("web/login");
//        }
//
//        return modelAndView;
//    }


    @GetMapping("/forbidden")
    public String forbidden() {
        return "/web/forbidden";
    }


    @GetMapping("/activate")
    public ModelAndView activate(@RequestParam(name = "token") String token) {
        ModelAndView modelAndView = new ModelAndView();
        String errorMessage = "";

        if (!GenericValidator.isBlankOrNull(token)) {
            Optional<Token> optionalToken = tokenService.getToken(token);

            if (optionalToken.isPresent()) {
                Token tokenObject = optionalToken.get();
                System.out.println("token obj = " + tokenObject);

                // a) token not expired
                if (tokenObject.getExpireDate().isAfter(LocalDateTime.now())) {
                    System.out.println("token not expired");

                    if (tokenObject.getUser().getStatus() == UserStatus.PENDING) {
                        // 1) check user status, status = PENDING, activate
                        // todo activate user
                        System.out.println("user status PENDING, activate");
                        modelAndView.setViewName("web/activation-result");
                    } else {
                        //  2) user status != PENDING, redirect to index page
                        System.out.println("user status is not PENDING, redirect to index page");
                        modelAndView.setViewName("redirect:/");
                    }
                } else {
                    //   b) token expired expire date < sysdate,
                    // show error message, token expired, ask user to resend activation email?(NEW LINK)
                    System.out.println("token expired");
                    String link = String.format("<a href='web?action=resend_activation_email&id=%d'>Resend new activation email? </a>", tokenObject.getUser().getId());
                    errorMessage = "Token expired. " + link;
                }
            } else {
                // 2.token not found
                // show error message Invalid Token
                errorMessage = "Invalid token";
                System.out.println("token not found");
            }

        } else {
            // show error message Invalid Token
            errorMessage = "Invalid token";
            System.out.println("Empty/null token");
        }

        if (!errorMessage.isEmpty()) {
            modelAndView.addObject("errorMessage", errorMessage);
            modelAndView.setViewName("web/token-error");
        }

        return modelAndView;
    }

//
//    @GetMapping("/checkEmail")
//    @ResponseBody
//    public CheckEmailResponse checkEmail(@RequestParam(name = "email") String email) {
//        boolean result = validationService.isDuplicate(email);
//        CheckEmailResponse response = new CheckEmailResponse(email, result);
//        return response;
//    }

    @GetMapping("/companies")
    public ModelAndView companies(
            @RequestParam(name = "page", defaultValue = "1") int page
    ) {
        ModelAndView modelAndView = new ModelAndView("web/companies");
        List<Company> companyList = companyService.getCompanyListWeb(page);
        long pageCount = companyService.getCompanyPageCount();
        modelAndView.addObject("companyList",companyList);
        modelAndView.addObject("pageCount",pageCount);
        modelAndView.addObject("currentPage",page);
        return modelAndView;
    }

    @GetMapping("/company")
    public ModelAndView company(
            @RequestParam(name = "id") long id
    ) {
        ModelAndView modelAndView = new ModelAndView("web/company");
        Optional<Company> optionalCompany = companyService.getCompanyById(id);
        List<Job> companyJobList = companyService.getCompanyActiveJobs(id);

        if (optionalCompany.isPresent()) {
            modelAndView.addObject("company",optionalCompany.get());
        }

        if (!companyJobList.isEmpty()) {
            modelAndView.addObject("companyJobList",companyJobList);
        }
        return modelAndView;
    }

    @GetMapping("/companyJobs")
    public ModelAndView companyJobs(
            @RequestParam(name = "id") long id,
            @RequestParam(name = "page",defaultValue = "1") int page
    ) {
        ModelAndView modelAndView = new ModelAndView("web/companyJobs");
        List<Job> jobList = companyService.getCompanyActiveJobsPaging(id,page);
        modelAndView.addObject("jobList",jobList);;

        long pageCount = jobService.getJobPageCount(id);
        modelAndView.addObject("pageCount",pageCount);
        modelAndView.addObject("currentPage",page);
        modelAndView.addObject("id",id);
        //wip todo
        return modelAndView;
    }

    @GetMapping("/job")
    public ModelAndView jobView(
            @RequestParam(name = "id") long id
    ) {
        ModelAndView modelAndView = new ModelAndView("web/job_detail");
        Optional<Job> jobDetail = jobService.getJobById(id);
        modelAndView.addObject("jobDetail",jobDetail.get());
        System.out.println("jobDetail = " + jobDetail);
        return modelAndView;
    }

    /*
    @GetMapping("/candidates")
    public ModelAndView candidates(
            @RequestParam(name = "page", defaultValue = "1") int page,
            @RequestParam(name = "size", defaultValue = "12") int size
    ) {
        ModelAndView modelAndView = new ModelAndView("web/candidates");
        List<Candidate> candidateList = candidateService.getCandidateList(page, size);
        long pageCount = candidateService.getPageCount(size);

        System.out.println("candidate list = " + candidateList);
        System.out.println("page count = " + pageCount);
        System.out.println("current page = " + page);

        modelAndView.addObject("candidateList", candidateList);
        modelAndView.addObject("pageCount", pageCount);
        modelAndView.addObject("currentPage", page);
        return modelAndView;
    }

     */

    @GetMapping("/candidates")
    public String candidatesAjax() {
        return "web/candidates-ajax";
    }

    @GetMapping("/candidate")
    public ModelAndView viewCandidate(@RequestParam(name = "id") long id) {
        ModelAndView modelAndView = new ModelAndView("web/candidate");

        System.out.println("id from view = " + id);

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(id);
        if(optionalCandidate.isPresent()) {
            Candidate  candidate = optionalCandidate.get();
            System.out.println("candidate = "+ candidate);
            modelAndView.addObject("candidate", candidate);
        }
        return modelAndView;
    }

    @GetMapping("/jobs")
    public ModelAndView jobs(
            @RequestParam(name = "page",defaultValue = "1") int page
    ) {
        ModelAndView modelAndView = new ModelAndView("web/jobs");
        List<Job> jobList = jobService.getAllJobsPaging(page);
        long pageCount = jobService.getPageCount();
        modelAndView.addObject("jobList",jobList);
        modelAndView.addObject("pageCount",pageCount);
        modelAndView.addObject("currentPage",page);

        return modelAndView;
    }
}
