package az.employee.domain;

import java.io.Serializable;

public class PageRequest implements Serializable {
    private static final long serialVersionUID = 2243708638607693121L;

    private int page;
    private int size;
    private String sortColumn;
    private String sortOrder;
    private String filter;

    public PageRequest() {
        this.page = 1;
        this.size = 10;
        this.sortColumn = "id";
        this.sortOrder = "asc";
        this.filter = "";
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getSortColumn() {
        return sortColumn;
    }

    public void setSortColumn(String sortColumn) {
        this.sortColumn = sortColumn;
    }

    public String getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(String sortOrder) {
        this.sortOrder = sortOrder;
    }

    public String getFilter() {
        return filter;
    }

    public void setFilter(String filter) {
        this.filter = filter;
    }

    @Override
    public String toString() {
        return "PageRequest{" +
                "page=" + page +
                ", size=" + size +
                ", sortColumn='" + sortColumn + '\'' +
                ", sortOrder='" + sortOrder + '\'' +
                ", filter='" + filter + '\'' +
                '}';
    }
}
