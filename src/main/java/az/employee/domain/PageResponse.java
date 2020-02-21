package az.employee.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PageResponse<T> implements Serializable {
    private static final long serialVersionUID = -7252797425683845534L;

    private List<T> data;
    private long totalCount;
    private long itemCount;
    private long pageCount;
    private long currentPage;
    private long pageSize;

    public PageResponse() {
        this.data = new ArrayList<>();
        this.totalCount = 0;
        this.itemCount = 0;
        this.pageCount = 0;
        this.currentPage = 1;
        this.pageSize = 10;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }

    public long getPageCount() {
        return pageCount;
    }

    public void setPageCount(long pageCount) {
        this.pageCount = pageCount;
    }

    public long getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(long currentPage) {
        this.currentPage = currentPage;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
    }

    public long getItemCount() {
        return itemCount;
    }

    public void setItemCount(long itemCount) {
        this.itemCount = itemCount;
    }

    @Override
    public String toString() {
        return "PageResponse{" +
                "totalCount=" + totalCount +
                ", itemCount=" + itemCount +
                ", pageSize=" + pageSize +
                ", data=" + data +
                '}';
    }
}
