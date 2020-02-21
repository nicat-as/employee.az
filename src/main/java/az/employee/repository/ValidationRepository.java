package az.employee.repository;

public interface ValidationRepository {
    boolean isDuplicate(String email);
}
