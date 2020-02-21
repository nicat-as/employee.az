package az.employee.service;

import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;

public interface ApplicationService {

    DataTableResult getApplicationDataTable(DataTableRequest request);

}
