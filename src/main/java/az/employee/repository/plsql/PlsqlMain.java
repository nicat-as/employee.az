package az.employee.repository.plsql;

import oracle.jdbc.OracleTypes;

import java.math.BigDecimal;
import java.sql.*;

public class PlsqlMain {

    public static void main(String[] args) {
        String jdbcDriver = "oracle.jdbc.driver.OracleDriver";
        String user = "hr";
        String password = "HR";
        String jdbcUrl = "jdbc:oracle:thin:@//10.251.82.9:1521/ORCL";

        Connection con = null;
        PreparedStatement ps = null;
        CallableStatement cs = null;
        ResultSet rs = null;

        try {

            // 2. jdbc driveri yuklemek


            Class.forName(jdbcDriver);

            // 3. bazaya qosul
            con = DriverManager.getConnection(jdbcUrl, user, password);
            con.setAutoCommit(false);


            cs = con.prepareCall("{call pkg_billing.add_customer(?, ?, ?, ?)}");
            cs.registerOutParameter(1, Types.BIGINT);
            cs.setString(2, "Xasay");
            cs.setString(3, "Xasayzada");
            cs.setString(4, "516403431");
            cs.executeUpdate();
            long id = cs.getLong(1);
            System.out.println("Xasay id = " + id);

            cs = con.prepareCall("{call ? := pkg_billing.get_customer_list}");
            cs.registerOutParameter(1, OracleTypes.CURSOR);
            cs.executeUpdate();
            rs = (ResultSet) cs.getObject(1);
            while(rs.next()) {
                System.out.printf("%d %s %s %s %f %f\n",
                        rs.getLong("id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("msisdn"),
                        rs.getBigDecimal("invoice_amt"),
                        rs.getBigDecimal("advance_amt")
                        );
            }

            System.out.println("------------------");
            cs = con.prepareCall("{call ? := pkg_billing.get_invoice_debt(?)}");
            cs.registerOutParameter(1, Types.DECIMAL);
            cs.setString(2, "502310169");
            cs.executeUpdate();
            BigDecimal invoice = cs.getBigDecimal(1);
            System.out.println("invoice = " + invoice);

            con.commit();

        } catch (Exception e) {
            e.printStackTrace();
            try {
                con.rollback();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } finally {
            try {
                if(rs != null) {
                    rs.close();
                }

                if(cs != null) {
                    cs.close();
                }

                if(con != null) {
                    con.close();
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
