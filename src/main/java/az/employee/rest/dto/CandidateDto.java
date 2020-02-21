package az.employee.rest.dto;

import java.io.Serializable;
import java.math.BigDecimal;

public class CandidateDto implements Serializable {
    private static final long serialVersionUID = 4590555063503733516L;

    private long id;
    private String name;
    private String surname;
    private String email;
    private String position;
    private BigDecimal minSalary;
    private BigDecimal maxSalary;


}
