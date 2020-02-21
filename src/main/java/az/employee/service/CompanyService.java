package az.employee.service;

import az.employee.domain.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CompanyService {
    DataTableResult getCompanies(DataTableRequest request);
    boolean deleteCompany(long id);
    Company addCompany(Company company);
    List<String> getIndustryFields();
    void updateCompany(Company company);
    PageResponse<Company> getCompanyPage(PageRequest request);

    List<Company> getCompanyListWeb(int page);
    List<Job> getCompanyActiveJobs(long id);
    List<Job> getCompanyActiveJobsPaging(long id,int page);
    Optional<Company> getCompanyById(long id);
    long getCompanyPageCount();
    DataTableResult getDataTableResult(DataTableRequest request);
}
