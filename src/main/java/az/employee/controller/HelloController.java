package az.employee.controller;


import az.employee.repository.plsql.SpringPlsqlMain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Random;


@RequestMapping("/hello")
@Controller
public class HelloController {

    @Autowired
    private SpringPlsqlMain plsql;

    @GetMapping("/")
    public String index() {
        plsql.run();
        return "hello";
    }

    @GetMapping("/test")
    public ModelAndView test() {
        ModelAndView modelAndView = new ModelAndView("test");

        Random random = new Random();
        int value = random.nextInt(10);
        modelAndView.addObject("value",value);
        return modelAndView;
    }

    @PostMapping("/")
    public ModelAndView login(
                              @RequestParam(name = "name") String customerName,
                              @RequestParam(name = "surname") String customerSurname,
                              @RequestParam(name = "salary") BigDecimal salary
                              ) {
        ModelAndView modelAndView = new ModelAndView("hello");


        modelAndView.addObject("customerName",customerName);
        modelAndView.addObject("customerSurname",customerSurname);
        modelAndView.addObject("salary",salary);
        modelAndView.addObject("date", LocalDateTime.now());

        return modelAndView;
    }
}
