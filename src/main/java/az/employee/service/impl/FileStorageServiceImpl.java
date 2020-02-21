package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.exception.FileStorageException;
import az.employee.service.FileStorageService;
import az.employee.util.FileUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileUrlResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Service
public class FileStorageServiceImpl implements FileStorageService {

    @Autowired
    private EmployeeazConfiguration configuration;

//    @Value("${upload.dir}")
//    private String uploadDirectory;

    @Override
    public String saveFile(long candidateId, MultipartFile file) {
        String fileDir = "";
        try {

            System.out.println("original name = " + file.getOriginalFilename());

            if(file.getOriginalFilename().contains("..")) {
                throw new FileStorageException("File name contains unacceptible chars");
            }

            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

            // /home/student/employeeaz1-upload/ candidateId/ 201912111043.png
            fileDir = String.format("%s%s%s%s%s%s",
                    configuration.getUploadDir(),
                    File.separatorChar,
                    candidateId,
                    File.separatorChar,
                    LocalDateTime.now().format(formatter),
                    FileUtility.getFileExtension(file.getOriginalFilename()));

            Path filePath = Paths.get(fileDir);

            if (!Files.exists(filePath.getParent())) {
                Files.createDirectory(filePath.getParent());
            }

//            file.transferTo(filePath);
            Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

        } catch (IOException e) {
            e.printStackTrace();
            throw new FileStorageException("File upload failed for candidate " + candidateId, e);
        }

        return fileDir;
    }

    @Override
    public Resource getFile(String file) {
        Resource resource = null;
        try {
            resource = new FileUrlResource(file);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error getting file " + file);
        }
        return resource;
    }
}
