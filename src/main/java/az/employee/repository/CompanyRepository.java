package az.employee.repository;

import az.employee.domain.Company;
import az.employee.domain.DataTableRequest;
import az.employee.domain.DataTableResult;
import az.employee.domain.Job;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface CompanyRepository {
    long getCompaniesTotal();
    long getCompaniesFiltered(String search);
    List<Company> getCompaniesList(String search, int column, String columnDir, int start, int length);
    boolean deleteCompany(long id);
    Company addCompany(Company company);
    List<String> getIndustryFields();
    void updateCompany(Company company);
    long getIndustryByName(String name);

    List<Company> getCompanyListWeb(int page);
    List<Job> getCompanyActiveJobs(long id);
    List<Job> getCompanyActiveJobsPaging(long id,int page);
    Optional<Company> getCompanyById(long id);
    long getCompanyPageCount();
    long getAllCompanyCountAdmin();
    long getCompanySearchCountAdmin(String search);
    List<Company> getCompanyListAdmin(String search, int column, String columnDir, int start, int length);
}
