package az.employee.repository.jdbc.sql;

public class CertificateQueries {

    public static final String ADD_CERTIFICATE = "insert into certificate(id, candidate_id, certificate_date, title, organization, file) " +
            " values(null, :candidate_id, :certificate_date, :title, :organization, :file)";

    public static final String GET_CERTIFICATE_BY_ID = "select cert.id, cert.candidate_id, cert.certificate_date, " +
            "cert.title, cert.organization, cert.file, cert.idate, cert.udate " +
            "from certificate cert " +
            "join candidate c on cert.candidate_id = c.id and c.status = 1 " +
            "where cert.id = :certificate_id and cert.status = 1";

    public static final String UPDATE_CERTIFICATE_BY_ID = "update certificate " +
            "set certificate_date = :certificate_date, title = :title, organization = :organization, file = :file " +
            "where id = :certificate_id and status = 1";

    public static final String DELETE_CERTIFICATE_BY_ID = "update certificate " +
            "set status = 0 " +
            "where id = :certificate_id and status = 1";

    public static final String GET_CERTIFICATE_LIST = "select cert.id, cert.candidate_id, cert.certificate_date, " +
            "cert.title, cert.organization, cert.file, cert.idate, cert.udate " +
            "from certificate cert " +
            "join candidate c on cert.candidate_id = c.id and c.status = 1 " +
            "where cert.candidate_id = :candidate_id and cert.status = 1";

}
