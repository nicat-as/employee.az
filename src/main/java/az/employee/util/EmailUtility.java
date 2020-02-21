package az.employee.util;

public class EmailUtility {
    public static String registrationSubject() {
        return "employee.az qeydiyyat.";
    }

    public static String registrationEmail(String name,String surname,String link) {
        return String.format("Hormetli %s %s, " +
                "Employee.az portalinda qeydiyyatdan kecdiyiniz ucun tesekkur edirik. " +
                "Profilinizi aktivlesdirmek ucun %s, linkine kecid edin. " +
                " " +
                "Hormetle employee.az komandasi.",name,surname,link);
    }
}
