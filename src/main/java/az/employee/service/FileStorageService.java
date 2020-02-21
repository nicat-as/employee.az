package az.employee.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface FileStorageService {

    String saveFile(long candidateId, MultipartFile file);
    Resource getFile(String file);
}
