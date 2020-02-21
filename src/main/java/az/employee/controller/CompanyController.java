package az.employee.controller;

import az.employee.domain.ArchiveJobs;
import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.domain.User;
import az.employee.service.ApplicationService;
import az.employee.service.ArchiveJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@RequestMapping("/company")
@Controller
public class CompanyController {

    @Autowired
    ApplicationService applicationService;

    @Autowired
    ArchiveJobsService archiveJobsService;

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest httpServletRequest) {

        ModelAndView modelAndView = new ModelAndView("company/hrms/index");
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        modelAndView.addObject("user", user);

        return modelAndView;
    }

    @GetMapping("/ApplicationListAjax")
    @ResponseBody
    public DataTableResult taskListAjax(HttpServletRequest request,
                                        @RequestParam(name = "draw") int draw,
                                        @RequestParam(name = "start") int start,
                                        @RequestParam(name = "length") int length,
                                        @RequestParam(name = "order[0][column]") int sortColumn,
                                        @RequestParam(name = "order[0][dir]") String sortDirection,
                                        @RequestParam(name = "search[value]") String filter
    ) {

//                datatable-dan gelen request parametrleri oxu
//                draw - server geri qaytarmalidir
//                start - hardan basla
//                length - neche setir getir
//                order[0][column] - hansi sutuna gore sirala
//                order[0][dir] - asc/desc
//                search[value] - axtarilan text

        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(filter);
        dataTableRequest.setUser((User) request.getSession().getAttribute("user"));

        System.out.println(dataTableRequest);

        DataTableResult dataTableResult = applicationService.getApplicationDataTable(dataTableRequest);

        return dataTableResult;
    }

    @GetMapping("/activities")
    public String homePage(){
        return "company/hrms/archiveJobs";
    }


    @GetMapping("/jobsListAjax")
    @ResponseBody
    public DataTableResult JobsTable(HttpServletRequest request,
                                     @RequestParam(name = "draw") int draw,
                                     @RequestParam(name = "start") int start,
                                     @RequestParam(name = "length") int length,
                                     @RequestParam(name = "order[0][column]") int sortColumn,
                                     @RequestParam(name = "order[0][dir]") String sortDirection,
                                     @RequestParam(name = "search[value]") String filter){

        DataTableRequest dataTableRequest = new DataTableRequest();
        dataTableRequest.setDraw(draw);
        dataTableRequest.setStart(start);
        dataTableRequest.setLength(length);
        dataTableRequest.setSortColumn(sortColumn);
        dataTableRequest.setSortDirection(sortDirection);
        dataTableRequest.setFilter(filter);
        dataTableRequest.setUser((User) request.getSession().getAttribute("user"));
        System.out.println("reqq = "+request.getSession().getAttribute("user"));
        DataTableResult dataTableResult = archiveJobsService.getJobsDataTable(dataTableRequest);
        System.out.println("data = " + dataTableResult);

        return dataTableResult;
    }

    @GetMapping("/getArchiveJobs")
    @ResponseBody
    public ArchiveJobs getArchiveJobsById(
            @RequestParam(name = "id") long id
    ) {
        Optional<ArchiveJobs> optionalArchiveJobs = archiveJobsService.getArchiveJobsById(id);

        if (optionalArchiveJobs.isPresent()) {
            return optionalArchiveJobs.get();
        }else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND);
        }
    }

}
