package az.employee.repository.jdbc;

import az.employee.domain.Company;
import az.employee.domain.Job;
import az.employee.repository.CompanyRepository;
import az.employee.repository.jdbc.mapper.CompanyRowMapper;
import az.employee.repository.jdbc.mapper.JobRowMapper;
import az.employee.repository.jdbc.sql.CompanyQueries;
import az.employee.repository.jdbc.sql.SqlQuery;
import az.employee.util.ColumnCompanyType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public class CompanyRepositoryJdbcImpl implements CompanyRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    @Autowired
    private CompanyRowMapper companyRowMapper;

    @Autowired
    private JobRowMapper jobRowMapper;

    @Override
    public List<Company> getCompanyListWeb(int page) {
        String sql = String.format(CompanyQueries.GET_COMPANY_LIST_PAGING_WEB, (page - 1) * 8);
        return jdbcTemplate.query(sql, new MapSqlParameterSource(), companyRowMapper);
    }

    @Override
    public List<Job> getCompanyActiveJobs(long id) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("organization_id", id);
        return jdbcTemplate.query(CompanyQueries.GET_COMPANY_JOBS_BY_ID, params, jobRowMapper);
    }

    @Override
    public List<Job> getCompanyActiveJobsPaging(long id, int page) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("company_id", id);
        String sql = String.format(CompanyQueries.GET_COMPANY_JOBS_BY_ID_PAGING, (page - 1) * 6);
        return jdbcTemplate.query(sql, params, jobRowMapper);
    }


    @Override
    public Optional<Company> getCompanyById(long id) {
        Optional<Company> optionalCompany = Optional.empty();

        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("company_id", id);
        List<Company> list = jdbcTemplate.query(CompanyQueries.GET_COMPANY_BY_ID, params, companyRowMapper);

        if (!list.isEmpty()) {
            optionalCompany = Optional.of(list.get(0));
        }
        return optionalCompany;
    }

    @Override
    public long getCompaniesTotal() {
        return jdbcTemplate.getJdbcTemplate().queryForObject(CompanyQueries.GET_COMPANIES_COUNT, Long.class);
    }

    @Override
    public long getCompaniesFiltered(String search) {
        SqlParameterSource params = new MapSqlParameterSource().addValue("search", "%" + search + "%");
        return jdbcTemplate.queryForObject(CompanyQueries.GET_FILTERED_COMPANIES_COUNT, params, Long.class);
    }

    @Override
    public List<Company> getCompaniesList(String search, int column, String columnDir, int start, int length) {

        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("search", "%" + search + "%")
                .addValue("start", start)
                .addValue("length", length);
        String sql = CompanyQueries.GET_FILTERED_COMPANIES
                .replace("{sortDirection}", columnDir)
                .replace("{sortColumn}", String.valueOf(column + 1));;
        List<Company> companyList = jdbcTemplate.query(sql, params, companyRowMapper);

        return companyList;
    }

    @Override
    public boolean deleteCompany(long id) {
        int count = jdbcTemplate.update(CompanyQueries.DELETE_COMPANY, new MapSqlParameterSource("id", id));
        return count > 0;
    }


    @Override
    public long getCompanyPageCount() {
        return jdbcTemplate.queryForObject(CompanyQueries.GET_COMPANY_PAGE_COUNT, new MapSqlParameterSource(), Long.class);
    }

    @Override
    public long getAllCompanyCountAdmin() {
        return jdbcTemplate.queryForObject(CompanyQueries.GET_COMPANY_COUNT_ADMIN, new MapSqlParameterSource(), Long.class);
    }

    @Override
    public long getCompanySearchCountAdmin(String search) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("searchWord", "%" + search + "%");
        return jdbcTemplate.queryForObject(CompanyQueries.GET_COMPANY_SEARCH_COUNT_ADMIN, params, Long.class);
    }

    @Override
    public List<Company> getCompanyListAdmin(String search, int column, String columnDir, int start, int length) {
        MapSqlParameterSource params = new MapSqlParameterSource();
        params.addValue("searchWord", "%" + search + "%");
        String sql = String.format(CompanyQueries.GET_COMPANY_LIST_ADMIN, ColumnCompanyType.getColumn(column), columnDir, start, length);
        return jdbcTemplate.query(sql, params, companyRowMapper);
    }

    @Override
    public Company addCompany(Company company) {
//        :name,:industry_id,:head_office,:create_date, :num_of_employee, " +
//            " :annual_revenue, :is_global, :rating, :about, :phone, :mobile ,:website, :email," +
//            " :facebook , :twitter, :linkedin, :instagram
        int global = 0;
        if (company.isGlobal()) {
            global = 1;
        }
        KeyHolder keyHolder = new GeneratedKeyHolder();
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("name", company.getName())
                .addValue("industry_id", company.getIndustry().getId())
                .addValue("head_office", company.getHeadOffice())
                .addValue("create_date", company.getCreateDate())
                .addValue("num_of_employee", company.getNumOfEmployee())
                .addValue("annual_revenue", company.getAnnualRevenue())
                .addValue("is_global", global)
                .addValue("rating", company.getRating())
                .addValue("about", company.getAbout())
                .addValue("phone", company.getPhone())
                .addValue("mobile", company.getMobile())
                .addValue("website", company.getWebsite())
                .addValue("email", company.getEmail())
                .addValue("facebook", company.getFacebook())
                .addValue("twitter", company.getTwitter())
                .addValue("linkedin", company.getLinkedin())
                .addValue("instagram", company.getInstagram());

        int count = jdbcTemplate.update(CompanyQueries.ADD_COMPANY, params, keyHolder);
        if (count > 0) {
            Number id = keyHolder.getKey();
            company.setId(id.longValue());
        }
        return company;
    }


    @Override
    public List<String> getIndustryFields() {
        List<String> industrMapList =
                jdbcTemplate.getJdbcTemplate().
                        query(SqlQuery.GET_INDUSTRY_FIELDS, (resultSet, i) -> {
                            return resultSet.getString("name");
                        });
        return industrMapList;
    }

    @Override
    public void updateCompany(Company company) {
//        " update organization set name = :name, " +
//            " industry_id = :industry_id  ,head_office = :head_office , " +
//            "  create_date= :create_date ,num_of_employee = :num_of_employee ,is_global = :is_global, " +
//            "  rating = :rating , about = : about, annual_revenue = :annual_revenue , create_date = :create_date," +
//            "  udate = :update ,  mobile = :mobile , phone = :phone , website = :website ,email = :email , " +
//            "  facebook =:facebook ,twitter = :twitter , linkedin = :linkedin , instagram = :instagram  " +
//            "  where id= :id and status=1 "
        int global = 0;
        if (company.isGlobal()) {
            global = 1;
        }
        SqlParameterSource params = new MapSqlParameterSource()
                .addValue("industry_id", company.getIndustry().getId())
                .addValue("id", company.getId())
                .addValue("name", company.getName())
                .addValue("head_office", company.getHeadOffice())
                .addValue("create_date", company.getCreateDate())
                .addValue("num_of_employee", company.getNumOfEmployee())
                .addValue("is_global", global)
                .addValue("rating", company.getRating())
                .addValue("about", company.getAbout())
                .addValue("annual_revenue", company.getAnnualRevenue())
                .addValue("create_date", company.getCreateDate())
                .addValue("update", LocalDateTime.now())
                .addValue("mobile", company.getMobile())
                .addValue("phone", company.getPhone())
                .addValue("website", company.getWebsite())
                .addValue("email", company.getEmail())
                .addValue("facebook", company.getFacebook())
                .addValue("twitter", company.getTwitter())
                .addValue("linkedin", company.getLinkedin())
                .addValue("instagram", company.getInstagram());

        int count = jdbcTemplate.update(CompanyQueries.UPDATE_COMPANY_BY_ID, params);
        if (count == 0) {
            throw new RuntimeException("Error updating company with id = " + company.getId());
        }

    }

    @Override
    public long getIndustryByName(String name) {
        SqlParameterSource params = new MapSqlParameterSource().addValue("name", name);
        long id = jdbcTemplate.queryForObject(SqlQuery.GET_INDUSTRY_ID_BY_NAME, params, Long.class);
        return id;
    }

}
