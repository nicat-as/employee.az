package az.employee.service.impl;

import az.employee.domain.ArchiveJobs;
import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.repository.ArchiveJobsRepository;
import az.employee.repository.jdbc.SqlQueryForArchiveJobs;
import az.employee.service.ArchiveJobsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class ArchiveJobsServiceImpl implements ArchiveJobsService {

    @Autowired
    private ArchiveJobsRepository archiveJobsRepository;


    @Override
    public DataTableResult getJobsDataTable(DataTableRequest request) {

        Map<Integer, String> map = new HashMap<>();
        map.put(0, "position");
        map.put(1, "name");
        map.put(2, "salary_min");
        map.put(3, "salary_max");
        map.put(4, "post_date");
        map.put(5, "deadline");

        DataTableResult dataTableResult = new DataTableResult();

        String sql = SqlQueryForArchiveJobs.GET_ARCHIVE_LIST_WITH_PAGING.replace("{SORT_COLUMN}", map.get(request.getSortColumn()))
                .replace("{SORT_DIRECTION}", request.getSortDirection());

        dataTableResult.setDraw(request.getDraw());
        dataTableResult.setRecordsTotal(archiveJobsRepository.getDataCount(request.getUser().getId()));
        dataTableResult.setRecordsFiltered(archiveJobsRepository.getFilteredDataCount(request.getUser().getId(), request.getFilter()));
        List<ArchiveJobs> archiveJobsList = archiveJobsRepository.getArchiveListJobsListWithPaging
                (sql, request.getStart(), request.getLength(), request.getFilter(), request.getUser().getId());

        dataTableResult.setData(new Object[archiveJobsList.size()][7]);

        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("mm.MM.yyyy");

        for (int i = 0; i < archiveJobsList.size(); i++) {
            archiveJobsList.get(i).getPosition();
            dataTableResult.getData()[i][0] = archiveJobsList.get(i).getPosition();
            dataTableResult.getData()[i][1] = archiveJobsList.get(i).getUserName();
//            dataTableResult.getData()[i][3] = "<c:set var=\"about\" value=\"${fn:substring(\'" + archiveJobsList.get(i).getAbout() + "\', 0, 10)}\"> ${about} </c:set>";
            dataTableResult.getData()[i][2] = archiveJobsList.get(i).getSalaryMin();
            dataTableResult.getData()[i][3] = archiveJobsList.get(i).getSalaryMax();
            dataTableResult.getData()[i][4] = archiveJobsList.get(i).getPostDate();
            dataTableResult.getData()[i][5] = archiveJobsList.get(i).getDeadline();
            dataTableResult.getData()[i][6] = String.format("<button id=%d onclick='showDetail(this)' data-toggle=\"modal\" data-target=\"#exampleModal\" type=\"button\" class=\"btn btn-icon\" title=\"View\"><i class=\"fa fa-eye\"></i></button>",archiveJobsList.get(i).getId());
        }


        return dataTableResult;
    }

    @Override
    public Optional<ArchiveJobs> getArchiveJobsById(long organizationId) {
        return archiveJobsRepository.getArchiveJobsById(organizationId);
    }
}
