package az.employee.service.impl;

import az.employee.domain.Application;
import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.repository.ApplicationRespository;
import az.employee.repository.jdbc.sql.ApplicationQueries;
import az.employee.service.ApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    @Autowired
    ApplicationRespository applicationRespository;

    @Override
    public DataTableResult getApplicationDataTable(DataTableRequest request) {

        Map<Integer, String> columnMapping = new HashMap<>();

        columnMapping.put(0, "name");
        columnMapping.put(1, "email");
        columnMapping.put(2, "application_date");
        columnMapping.put(3, "position");

        String sql = ApplicationQueries.GET_APPLICATION_WITH_PAGING.replace("{SORT_COLUMN}", columnMapping.get(request.getSortColumn()))
                .replace("{SORT_DIRECTION}", request.getSortDirection());
        System.out.println("sql = " + sql);

        DataTableResult dataTableResult = new DataTableResult();
        dataTableResult.setDraw(request.getDraw());
        System.out.println("asdfgh "+request.getUser().getName());

        dataTableResult.setRecordsTotal(applicationRespository.getApplicationCount(request.getUser().getId()));

        System.out.println(applicationRespository.getApplicationCount(request.getUser().getId()));

        dataTableResult.setRecordsFiltered(applicationRespository.getFilteredApplicationCount(request.getFilter(), request.getUser().getId()));
        System.out.println(applicationRespository.getFilteredApplicationCount(request.getFilter(), request.getUser().getId()));

        List<Application> applicationList = applicationRespository.getApplicationListWithPaging(sql, request.getStart(), request.getLength(), request.getFilter(), request.getUser().getId());
        System.out.println(applicationList);

        dataTableResult.setData(new Object[applicationList.size()][7]);

        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd.MM.yyyy");

        for (int i = 0; i < applicationList.size(); i++) {
            dataTableResult.getData()[i][0] = applicationList.get(i).getPhoto();
            dataTableResult.getData()[i][1] = applicationList.get(i).getName();
            dataTableResult.getData()[i][2] = applicationList.get(i).getEmail();
            dataTableResult.getData()[i][3] = applicationList.get(i).getTitle();
            dataTableResult.getData()[i][4] = applicationList.get(i).getApplicationDate();
            dataTableResult.getData()[i][5] = applicationList.get(i).getPosition();
            dataTableResult.getData()[i][6] = "<a href=\"#0\" >View</a>&nbsp;" +
                    "<a href=\"#0\" >Invitation</a>&nbsp;" +
                    "<a href=\"#0\" >Reject</a>";
        }

        return dataTableResult;

    }
}
