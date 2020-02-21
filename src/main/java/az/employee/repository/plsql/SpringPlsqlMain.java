package az.employee.repository.plsql;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.PostConstruct;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;
import java.util.Map;

@Component
public class SpringPlsqlMain {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    //    @Autowired
    private SimpleJdbcCall getCustomerList;

    private SimpleJdbcCall addCustomer;

    private SimpleJdbcCall getAdvanceAmount;

    @PostConstruct
    public void init() {

        jdbcTemplate.setResultsMapCaseInsensitive(true);
        addCustomer = new SimpleJdbcCall(jdbcTemplate);

        addCustomer.withCatalogName("pkg_billing")
                .withProcedureName("add_customer")
                .declareParameters(new SqlOutParameter("p_name", Types.BIGINT),
                        new SqlParameter("p_name", Types.VARCHAR),
                        new SqlParameter("p_surname", Types.VARCHAR),
                        new SqlParameter("p_msisdn", Types.VARCHAR)
                );

        getCustomerList = new SimpleJdbcCall(jdbcTemplate);

        getCustomerList
                .withCatalogName("pkg_billing")
                .withFunctionName("get_customer_list")
                .returningResultSet("customers", new CustomerMapper());

        getAdvanceAmount = new SimpleJdbcCall(jdbcTemplate);
        getAdvanceAmount.withCatalogName("pkg_billing")
                .withFunctionName("get_advance")
                .declareParameters(new SqlParameter("p_msisdn", Types.VARCHAR));
    }

    @Transactional
    public void run() {

        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("p_name", "Cavid")
                .addValue("p_surname", "Nezerov")
                .addValue("p_msisdn", "502456789");

        Map<String, Object> map = addCustomer.execute(params);
        System.out.println(map.get("p_id"));

        map = getCustomerList.execute();
        List<Customer> customerList = (List<Customer>) map.get("customers");
        customerList.forEach(System.out::println);

        params = new MapSqlParameterSource("p_msisdn", "502310169");
        BigDecimal advance = getAdvanceAmount.executeFunction(BigDecimal.class, params);
        System.out.println("advance amt = " + advance);
    }

    private class CustomerMapper implements RowMapper<Customer> {

        @Override
        public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
            Customer customer = new Customer();
            customer.setId(rs.getLong("id"));
            customer.setName(rs.getString("name"));
            customer.setSurname(rs.getString("surname"));
            customer.setMsisdn(rs.getString("msisdn"));
            return customer;
        }
    }

    public static void main(String[] args) {
        SpringPlsqlMain springPlsqlMain = new SpringPlsqlMain();
        springPlsqlMain.run();
    }
}
