package az.employee.repository;

import az.employee.domain.*;

import java.util.List;
import java.util.Optional;

public interface CandidateRepository {

    List<Candidate> getCandidateList(int page, int size);

    List<Candidate> getCandidateList(String search, int column, String columnDir, int start, int length);

    long getCandidateCount();

    Optional<Candidate> getCandidateById(long id);

    Candidate addCandidate(Candidate candidate);

    Candidate updateCandidate(Candidate candidate);

    List<Tag> getTagList(long id);

    void updateImage(Candidate candidate);

}
