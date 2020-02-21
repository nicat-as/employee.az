package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.*;
import az.employee.repository.CompanyRepository;
import az.employee.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private EmployeeazConfiguration configuration;

//    @Value("8")
//    long pageCompanyCount;

    @Override
    public List<Company> getCompanyListWeb(int page) {
        return companyRepository.getCompanyListWeb(page);
    }

    @Override
    public List<Job> getCompanyActiveJobs(long id) {
        return companyRepository.getCompanyActiveJobs(id);
    }

    @Override
    public List<Job> getCompanyActiveJobsPaging(long id, int page) {
        return companyRepository.getCompanyActiveJobsPaging(id, page);
    }


    @Override
    public Optional<Company> getCompanyById(long id) {
        return companyRepository.getCompanyById(id);
    }

    @Override
    public long getCompanyPageCount() {
        long companyPageCount = companyRepository.getCompanyPageCount();
        long pageCount = companyPageCount / configuration.getCompanyPageCount();

        if (companyPageCount % configuration.getCompanyPageCount() > 0) {
            pageCount++;
        }
        return pageCount;
    }

    @Override
    public DataTableResult getDataTableResult(DataTableRequest request) {
        DataTableResult result = new DataTableResult();
        result.setDraw(request.getDraw());
        result.setRecordsTotal(companyRepository.getAllCompanyCountAdmin());
        result.setRecordsFiltered(companyRepository.getCompanySearchCountAdmin(request.getFilter()));

        List<Company> list = companyRepository.getCompanyListAdmin(request.getFilter(), request.getSortColumn(), request.getSortDirection(), request.getStart(), request.getLength());

        result.setData(new Object[list.size()][3]);

        if (!list.isEmpty()) {
            for (int i = 0; i < list.size(); i++) {
                result.getData()[i][0] = list.get(i).getName();
                result.getData()[i][1] = list.get(i).getHeadOffice();
                result.getData()[i][2] = String.format("  <button id=%d onclick='showDetail(this)' data-target='#exampleModal' data-toggle='modal' type=\"button\" class=\"btn btn-icon\" title=\"View\"><i class=\"fa fa-eye\"></i></button>\n" +
                        "                                                <button id=%d type=\"button\" class=\"btn btn-icon\" title=\"Edit\"><i class=\"fa fa-edit\"></i></button>\n" +
                        "                                                <button id=%d  type=\"button\" class=\"btn btn-icon js-sweetalert\" title=\"Delete\" data-type=\"confirm\"><i class=\"fa fa-trash-o text-danger\"></i></button>", list.get(i).getId(), list.get(i).getId(), list.get(i).getId());

            }
        }

        return result;
    }

    @Override
    public DataTableResult getCompanies(DataTableRequest request) {
        DataTableResult result = new DataTableResult();
        result.setDraw(request.getDraw());
        result.setRecordsTotal(companyRepository.getCompaniesTotal());
        result.setRecordsFiltered(companyRepository.getCompaniesFiltered(request.getFilter()));
        List<Company> companyList = companyRepository.getCompaniesList(request.getFilter(),
                request.getSortColumn(), request.getSortDirection(), request.getStart(), request.getLength());
        System.out.println("company service - companylist");
        System.out.println(companyList);
        result.setData(new Object[companyList.size()][5]);

        // o.name as orgname, i.name indname ,o.head_office," +
        //            " o.create_date, o.num_of_employee, o.annual_revenue, " +
        //            "   o.rating, o.about
        for (int i = 0; i < companyList.size(); i++) {
            result.getData()[i][0] = companyList.get(i).getId();
            result.getData()[i][1] = companyList.get(i).getName();
            result.getData()[i][2] = companyList.get(i).getIndustry().getName();
            result.getData()[i][3] = companyList.get(i).getHeadOffice();
            result.getData()[i][4] = String.format("<button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\"" +
                            " data-target=\"#popupview\" id=%d onclick=\"showdetail(this)\">View </button>" +
                            " <button type=\"button\" name=\"update\" class=\"btn btn-success\" >" +
                            " <a href=\"updateCompany?id=%d\">Update<a/> </button> " +
                            "<button type=\"button\" name=\"delete\" class=\"btn btn-danger btn-xs delete\" id=%d> Delete </button> ",
                    companyList.get(i).getId(), companyList.get(i).getId(), companyList.get(i).getId());
        }
        return result;
    }

    @Override
    public boolean deleteCompany(long id) {
        return companyRepository.deleteCompany(id);
    }


    @Override
    public Company addCompany(Company company) {
        company.getIndustry().setId(companyRepository.getIndustryByName(company.getIndustry().getName()));
        return companyRepository.addCompany(company);
    }

    @Override
    public List<String> getIndustryFields() {
        return companyRepository.getIndustryFields();
    }

    @Override
    public void updateCompany(Company company) {
        company.getIndustry().setId(companyRepository.getIndustryByName(company.getIndustry().getName()));
        companyRepository.updateCompany(company);
    }

    @Override
    public PageResponse<Company> getCompanyPage(PageRequest request) {
        PageResponse<Company> companyPageResponse = new PageResponse<>();
        long totalCount = companyRepository.getCompaniesFiltered(request.getFilter());
        int start = (request.getPage() - 1) * request.getSize();
        long pageCount = totalCount / request.getSize();
        if (totalCount % request.getSize() > 0) {
            pageCount++;
        }
        List<Company> companyList = companyRepository.getCompaniesList(
                request.getFilter(),
                Integer.parseInt(request.getSortColumn()),
                request.getSortOrder(),
                start,
                request.getSize());
        companyPageResponse.setCurrentPage(request.getPage());
        companyPageResponse.setData(companyList);
        companyPageResponse.setItemCount(companyList.size());
        companyPageResponse.setPageSize(request.getSize());
        companyPageResponse.setPageCount(pageCount);
        companyPageResponse.setTotalCount(totalCount);
        return companyPageResponse;
    }
}
