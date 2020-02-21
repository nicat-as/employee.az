package az.employee.schedule;

import az.employee.config.EmployeeazConfiguration;
import az.employee.service.EmailService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.validation.constraints.Email;
import java.time.LocalDateTime;

@Component
public class EmployeeazNotificationSchedule {

    private Logger logger = Logger.getLogger(EmployeeazNotificationSchedule.class);

    @Autowired
    private EmployeeazConfiguration configuration;

    @Autowired
    private EmailService emailService;

//    @Scheduled(fixedRate = 10*1000)
    public void sendSmsNotifications() {
        if(configuration.isSendNotifications()) {
            System.out.println(LocalDateTime.now() + " send pending sms notifications");
        }
    }

//    @Scheduled(fixedRate = 15*1000)
    public void sendEmailNotifications() {
        if(configuration.isSendNotifications()) {
            System.out.println(LocalDateTime.now() + " send pending email notifications");

//            emailService.sendEmail(
//                    configuration.getActivation().getFromEmail(),
//                    "ramin.orujov@itcity.academy",
//                    "Hello from Employee.az",
//                    "Test email from employee.az"
//                    );

        } else {
            System.out.println("notifications are turned off");
        }
    }

//    @Scheduled(cron = "*/2 * * * * *")
    public void sendPushNotifications() {
        if(configuration.isSendNotifications()) {
            System.out.println(LocalDateTime.now() + " send pending push notifications");
        }
    }

}
