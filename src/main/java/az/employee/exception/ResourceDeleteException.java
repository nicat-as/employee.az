package az.employee.exception;

public class ResourceDeleteException extends RuntimeException {
    private long id;

    public ResourceDeleteException(String message, long id) {
        super(message);
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
