package az.employee.service;

import az.employee.domain.*;

import java.util.List;
import java.util.Optional;

import java.util.List;
import java.util.Optional;

public interface CandidateService {

    void updateImage(Candidate candidate);

    Candidate register(Candidate candidate);

    DataTableResult getDataTableResponse(DataTableRequest dataTableRequest);

    long getCandidateCount();

    List<Candidate> getCandidateList(int page, int size);

    long getPageCount(int size);

    Optional<Candidate> getCandidateById(long candidateId);

    Candidate addCandidate(Candidate candidate);

    Candidate updateCandidate(Candidate candidate);

    List<Tag> getTagList(long candidateId);

    PageResponse<Candidate> getCandidatePage(PageRequest pageRequest);
}
