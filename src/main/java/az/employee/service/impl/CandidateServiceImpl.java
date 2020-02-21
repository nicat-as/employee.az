package az.employee.service.impl;

import az.employee.config.EmployeeazConfiguration;
import az.employee.domain.*;
import az.employee.repository.*;
import az.employee.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class CandidateServiceImpl implements CandidateService {

    @Autowired
    private PasswordService passwordService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private AddressRepository addressRepository;

    @Autowired
    private JobHistoryService jobHistoryService;

    @Autowired
    private EducationService educationService;

    @Autowired
    private CertificateService certificateService;

    @Autowired
    private LanguageSkillService languageSkillService;

    @Autowired
    private SkillService skillService;

    @Autowired
    private EmployeeazConfiguration configuration;

    @Transactional
    @Override
    public Candidate register(Candidate candidate) {

              /*
        1.hash password
        * 2.insert into db
            a.insert into user
            a1.insert into user role Candidate
            b.generate token
            c.save token
            d.generate activation email
            e.insert activation email
        3.send email - notification queue processor
        * */

        try {
            String hashedPassword = passwordService.hashPassword(candidate.getUser().getPassword());
            candidate.getUser().setPassword(hashedPassword);

            //  2.1.insert into user
            User user = userRepository.addUser(candidate.getUser());

            // 2.1a add candidate role to user
            userRepository.addRole(user, Role.CANDIDATE);

            //   2.2.generate token
            Token token = tokenService.generateToken(user);

            // 2.3 insert token
            token = tokenService.saveToken(token);

            //  2.4 generate activation email
            Email activationEmail = emailService.generateActivationEmail(token);

            //  2.5 insert activation email
            emailService.saveEmail(activationEmail);
        } catch (Exception e) {
            e.printStackTrace();
            //todo add logging
            throw new RuntimeException("Error adding candidate " + candidate);
        }
        return candidate;
    }


    @Override
    public DataTableResult getDataTableResponse(DataTableRequest request) {
        DataTableResult result = new DataTableResult();
        result.setDraw(request.getDraw());
        result.setRecordsTotal(userRepository.getTotalCount());
        result.setRecordsFiltered(userRepository.getFilterCount(request.getFilter()));

        List<Candidate> list = candidateRepository.getCandidateList(request.getFilter(), request.getSortColumn(), request.getSortDirection(), request.getStart(), request.getLength());
        System.out.println("list = " + list);

        result.setData(new Object[list.size()][7]);

        if (!list.isEmpty()) {
            for (int i = 0; i < list.size(); i++) {
                result.getData()[i][0] = list.get(i).getUser().getName() + " " + list.get(i).getUser().getSurname();
                result.getData()[i][1] = list.get(i).getUser().getEmail();
                result.getData()[i][2] = list.get(i).getUser().getMobile();
                result.getData()[i][3] = list.get(i).getPosition();
                result.getData()[i][4] = list.get(i).getSalaryMin() + " - " + list.get(i).getSalaryMax();
                result.getData()[i][5] = list.get(i).getAddress().getCountry().getName() + " " + list.get(i).getAddress().getCity().getName();
                result.getData()[i][6] = String.format("<button id=%d onclick='showCandidate(this)' data-target='#candidateModal' data-toggle='modal' type=\"button\" class=\"btn btn-icon\" title=\"View\"><i class=\"fa fa-eye\"></i></button>\n" +
                        "                                                <button  type=\"button\" class=\"btn btn-icon\" title=\"Edit\"><a href='editCandidate?id=%d'> <i class=\"fa fa-edit\"></i> </a> </button>\n" +
                        "                                                <button  type=\"button\" class=\"btn btn-icon js-sweetalert\" title=\"Delete\" data-type=\"confirm\"> <a href='deleteCandidate?id=%d' ><i class=\"fa fa-trash-o text-danger\"></i> </a> </button>", list.get(i).getId(), list.get(i).getId(), list.get(i).getId());

//                        "<a href='viewCandidate?id="+list.get(i).getId()+"'>View</a> "
//                + "<a href='editCandidate?id="+list.get(i).getId()+"'>Edit</a> "
//                + "<a href='deleteCandidate?id="+list.get(i).getId()+"'>Delete</a>";

            }
        }

        System.out.println("result = " + result);
        return result;
    }

    @Override
    public PageResponse<Candidate> getCandidatePage(PageRequest pageRequest) {
        PageResponse<Candidate> response = new PageResponse<>();

        if (pageRequest.getSize() <= 0) {
            pageRequest.setSize(configuration.getCandidatePageCount()); // default page size from config
        }

        response.setPageSize(pageRequest.getSize());
        response.setTotalCount(getCandidateCount());
        response.setPageCount(getPageCount(pageRequest.getSize()));
        response.setCurrentPage(pageRequest.getPage());
        List<Candidate> candidateList = getCandidateList(pageRequest.getPage(), pageRequest.getSize());
        response.setData(candidateList);
        response.setItemCount(candidateList.size());

        return response;
    }

    @Override
    public long getCandidateCount() {
        return candidateRepository.getCandidateCount();
    }

    @Override
    public Optional<Candidate> getCandidateById(long candidateId) {
        Optional<Candidate> optionalCandidate = candidateRepository.getCandidateById(candidateId);

        if (optionalCandidate.isPresent()) {
            Candidate candidate = optionalCandidate.get();

            candidate.setJobHistoryList(jobHistoryService.getJobHistoryList(candidate.getId()));
            candidate.setEducationList(educationService.getEducationList(candidate.getId()));
            candidate.setCertificateList(certificateService.getCertificateList(candidate.getId()));
            candidate.setLanguageSkillList(languageSkillService.getLanguageSkillList(candidate.getId()));
            candidate.setSkillList(skillService.getSkillList(candidate.getId()));
            candidate.setTagList(candidateRepository.getTagList(candidate.getId()));

        }

        return optionalCandidate;
    }

    @Transactional
    @Override
    public Candidate addCandidate(Candidate candidate) {
        candidate.setUser(userRepository.addUser(candidate.getUser()));
        candidate.setAddress(addressRepository.addAddress(candidate.getAddress()));
        return candidateRepository.addCandidate(candidate);
    }

    @Transactional
    @Override
    public Candidate updateCandidate(Candidate candidate) {
        userRepository.updateUser(candidate.getUser());
        addressRepository.updateAddress(candidate.getAddress());
        return candidateRepository.updateCandidate(candidate);
    }

    @Override
    public List<Candidate> getCandidateList(int page, int size) {
        return candidateRepository.getCandidateList(page, size);
    }

    @Override
    public long getPageCount(int size) {
        long candidateCount = candidateRepository.getCandidateCount();
        long candidatePageCount = candidateCount / size;
        if (candidateCount % size > 0) {
            candidatePageCount++;
        }

        return candidatePageCount;
    }

    @Override
    public List<Tag> getTagList(long candidateId) {
        return candidateRepository.getTagList(candidateId);
    }

    @Transactional
    @Override
    public void updateImage(Candidate candidate) {
        candidateRepository.updateImage(candidate);
    }
}
