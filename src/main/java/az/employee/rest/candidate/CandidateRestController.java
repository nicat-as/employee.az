package az.employee.rest.candidate;

import az.employee.domain.Candidate;
import az.employee.domain.PageRequest;
import az.employee.domain.PageResponse;
import az.employee.exception.ResourceDeleteException;
import az.employee.rest.dto.CandidateDto;
import az.employee.service.CandidateService;
import az.employee.service.FileStorageService;
import az.employee.util.FileUtility;
import az.employee.util.FormUtility;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.eclipse.jdt.internal.compiler.codegen.FloatCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Optional;

@RequestMapping(value = {"/rest/candidates/", "/admin/rest/candidates/"})
@RestController
public class CandidateRestController {

    @Autowired
    private CandidateService candidateService;

    @Autowired
    private FileStorageService fileStorageService;

    @ApiOperation(value = "get candidate list with paging",
    notes = "Get list of candidates with paging",
    response = PageResponse.class)
    @GetMapping("/")
//    public PageResponse<CandidateDto> getCandidateList(
    public PageResponse<Candidate> getCandidateList(
            @ApiParam(name = "page", defaultValue = "1", example = "1")
            @RequestParam(name = "page", required = false, defaultValue = "1") int page,
            @RequestParam(name = "size", required = false, defaultValue = "10") int size,
            @RequestParam(name = "sortColumn", required = false, defaultValue = "id") String sortColumn,
            @RequestParam(name = "sortOrder", required = false, defaultValue = "asc") String sortOrder,
            @RequestParam(name = "filter", required = false, defaultValue = "") String filter
    ) {
        PageRequest pageRequest = new PageRequest();
        pageRequest.setPage(page);
        pageRequest.setSize(size);
        pageRequest.setSortColumn(sortColumn);
        pageRequest.setSortOrder(sortOrder);
        pageRequest.setFilter(filter);
        System.out.println("page request = " + pageRequest);

        PageResponse<Candidate> candidatePageResponse = candidateService.getCandidatePage(pageRequest);
//        PageResponse<CandidateDto> candidateDtoPageResponse = new PageResponse<>();
//        candidateDtoPageResponse.setPageCount(candidatePageResponse.getPageCount());
//        candidateDtoPageResponse.setTotalCount(candidatePageResponse.getTotalCount());
//        candidateDtoPageResponse.setPageSize(candidatePageResponse.getPageSize());
//        candidateDtoPageResponse.setItemCount(ca);
        System.out.println("page response = " + candidatePageResponse);

        return candidatePageResponse;
    }

    @GetMapping("/{id}")
    public Candidate getCandidateById(@PathVariable(name = "id") long candidateId) {
        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {
            return optionalCandidate.get();
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Candidate with id " + candidateId + " not found!");
        }
    }

    @PostMapping("/")
    public Candidate addCandidate(@RequestBody @Validated Candidate candidate) {
        //todo validation
        return candidateService.addCandidate(candidate);
    }

    @PutMapping("/{candidateId}")
    public Candidate updateCandidate(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestBody Candidate candidate) {
        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);

        if (optionalCandidate.isPresent()) {
            candidate.setId(candidateId);
            candidate = candidateService.updateCandidate(candidate);
        } else {
            candidate = candidateService.addCandidate(candidate);
        }

        return candidate;
    }

    @PostMapping("/{candidateId}/profile/image")
    public ResponseEntity<Void> uploadImage(
            @PathVariable(name = "candidateId") long candidateId,
            @RequestParam(name = "image") MultipartFile image) {


        String file = fileStorageService.saveFile(candidateId, image);
        System.out.println("file location = " + file);
        Candidate candidate = new Candidate();
        candidate.setId(candidateId);
        candidate.setProfileImage(file);
        candidateService.updateImage(candidate);

        HttpHeaders httpHeaders = new HttpHeaders();
        // todo fix
        httpHeaders.add("Location", file);
        return new ResponseEntity<Void>(httpHeaders, HttpStatus.NO_CONTENT);
    }

    @GetMapping("/{candidateId}/profile/image")
    public ResponseEntity<Resource> getImage(@PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {

            try {
                Candidate candidate = optionalCandidate.get();
                Resource resource = fileStorageService.getFile(candidate.getProfileImage());
                String contentType = Files.probeContentType(Paths.get(candidate.getProfileImage()));

                System.out.println("image = " + candidate.getProfileImage());
                System.out.println("contentType = " + contentType);

                HttpHeaders headers = new HttpHeaders();
                headers.add("Content-Type", contentType);
                return new ResponseEntity<>(resource, headers, HttpStatus.OK);
            } catch (Exception e) {
                e.printStackTrace();
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting profile image");
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Candidate not found");
        }


    }

    @GetMapping("/{candidateId}/profile/image/download")
    public ResponseEntity<Resource> downloadImage(@PathVariable(name = "candidateId") long candidateId) {

        Optional<Candidate> optionalCandidate = candidateService.getCandidateById(candidateId);
        if (optionalCandidate.isPresent()) {

            try {
                Candidate candidate = optionalCandidate.get();
                Resource resource = fileStorageService.getFile(candidate.getProfileImage());
                String contentType = Files.probeContentType(Paths.get(candidate.getProfileImage()));

                System.out.println("image = " + candidate.getProfileImage());
                System.out.println("contentType = " + contentType);

                String filename = String.format("candidate-%s%s", candidateId, FileUtility.getFileExtension(candidate.getProfileImage()));
                HttpHeaders headers = new HttpHeaders();
                headers.add("Content-Type", contentType);
                headers.add("Content-disposition", "attachment;filename=\"" + filename + "\"");
                return new ResponseEntity<>(resource, headers, HttpStatus.OK);
            } catch (Exception e) {
                e.printStackTrace();
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting profile image");
            }
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Candidate not found");
        }
    }
}
