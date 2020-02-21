<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="csrf-token" content="uogU0NLGkPSmzjE9jSDDXdbL7VZZSWhwfcykYUO7">

    <!-- bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- bootstrap-select -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

    <!-- datepicker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <!-- smartwizard -->
    <link href="../smartwizard/css/smart_wizard.css" rel="stylesheet" type="text/css"/>
    <link href="../smartwizard/css/smart_wizard_theme_circles.css" rel="stylesheet" type="text/css"/>
    <link href="../smartwizard/css/smart_wizard_theme_arrows.css" rel="stylesheet" type="text/css"/>
    <link href="../smartwizard/css/smart_wizard_theme_dots.css" rel="stylesheet" type="text/css"/>
</head>

<body class="font-montserrat">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>

<div id="main_content">
    <div class="page">
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="user-add" role="tabpanel">
                        <div class="card">
                            <div class="card-body">
                                <div class="container">
                                    <form action="#" id="myForm" role="form" data-toggle="validator" method="post"
                                          accept-charset="utf-8">
                                        <div id="smartwizard">
                                            <ul>
                                                <li><a href="#step-1">Step 1<br/><small>Candidate</small></a></li>
                                                <li><a href="#step-2">Step 2<br/><small>Job History</small></a></li>
                                                <li><a href="#step-3">Step 3<br/><small>Educations</small></a></li>
                                                <li><a href="#step-4">Step 4<br/><small>Certificates</small></a></li>
                                                <li><a href="#step-5">Step 5<br/><small>Language Skills</small></a></li>
                                                <li><a href="#step-6">Step 6<br/><small>Skills</small></a></li>
                                            </ul>
                                            <div>
                                                <div id="step-1">
                                                    <h2>Candidate</h2>
                                                    <div id="form-step-0" role="form" data-toggle="validator">
                                                        <div class="row clearfix" id="candidate-step">
                                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                                <div class="form-group">
                                                                    <label>Name*</label>
                                                                    <input type="text"
                                                                           id="candidate-name"
                                                                           class="form-control"
                                                                           placeholder="Name"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                                <div class="form-group">
                                                                    <label>Surname*</label>
                                                                    <input type="text"
                                                                           id="candidate-surname"
                                                                           class="form-control"
                                                                           placeholder="Surname"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6">
                                                                <div class="form-group">
                                                                    <label>Email*</label>
                                                                    <input type="email"
                                                                           id="candidate-email"
                                                                           class="form-control"
                                                                           placeholder="Email"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Degree</label>
                                                                    <select id="candidate-degree"
                                                                            class="form-control"
                                                                            data-live-search="true">
                                                                        <option value="-1">Select</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-6">
                                                                <div class="form-group">
                                                                    <label>Modile</label>
                                                                    <input type="tel"
                                                                           id="candidate-mobile"
                                                                           class="form-control"
                                                                           placeholder="Mobile No"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-6">
                                                                <div class="form-group">
                                                                    <label>Phone</label>
                                                                    <input type="tel"
                                                                           id="candidate-phone"
                                                                           class="form-control"
                                                                           placeholder="Phone No"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Password*</label>
                                                                    <input type="password"
                                                                           id="candidate-password"
                                                                           class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Password Confirmation*</label>
                                                                    <input type="password"
                                                                           id="candidate-password-confirm"
                                                                           class="form-control"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Minimum Salary</label>
                                                                    <input type="text"
                                                                           id="candidate-min-salary"
                                                                           class="form-control"
                                                                           placeholder="Minimum Salary"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Maximum Salary</label>
                                                                    <input type="text"
                                                                           id="candidate-max-salary"
                                                                           class="form-control"
                                                                           placeholder="Maximum Salary"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Birth Date</label>
                                                                    <input type="text"
                                                                           id="candidate-birthdate"
                                                                           class="form-control"
                                                                           placeholder="Birth Date"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Position</label>
                                                                    <input type="text"
                                                                           id="candidate-position"
                                                                           class="form-control"
                                                                           placeholder="Position"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Country*</label>
                                                                    <select id="candidate-country"
                                                                            class="form-control"
                                                                            data-live-search="true">
                                                                        <option value="-1">Select</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>City*</label>
                                                                    <select id="candidate-city"
                                                                            class="form-control"
                                                                            data-live-search="true">
                                                                        <option value="-1">Select</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Address Info*</label>
                                                                    <input type="text"
                                                                           id="candidate-info"
                                                                           class="form-control"
                                                                           placeholder="Address Info"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>LinkedIn</label>
                                                                    <input type="text"
                                                                           id="candidate-linkedin"
                                                                           class="form-control"
                                                                           placeholder="LinkedIn"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>GitHub</label>
                                                                    <input type="text"
                                                                           id="candidate-github"
                                                                           class="form-control"
                                                                           placeholder="GitHub"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>GitLab</label>
                                                                    <input type="text"
                                                                           id="candidate-gitlab"
                                                                           class="form-control"
                                                                           placeholder="GitLab"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Facebook</label>
                                                                    <input type="text"
                                                                           id="candidate-facebook"
                                                                           class="form-control"
                                                                           placeholder="Facebook"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Twitter</label>
                                                                    <input type="text"
                                                                           id="candidate-twitter"
                                                                           class="form-control"
                                                                           placeholder="Twitter"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-12">
                                                                <div class="form-group">
                                                                    <label>Instagram</label>
                                                                    <input type="text"
                                                                           id="candidate-instagram"
                                                                           class="form-control"
                                                                           placeholder="Instagram"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="step-2">
                                                    <h2>Job History</h2>
                                                    <div id="form-step-1" role="form" data-toggle="validator">
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Position*</label>
                                                                <input type="text"
                                                                       id="job-history-position"
                                                                       class="form-control"
                                                                       placeholder="Position"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Start Date*</label>
                                                                <input type="text"
                                                                       id="job-history-start-date"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>End date</label>
                                                                <input type="text"
                                                                       id="job-history-end-date"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>Country*</label>
                                                                <select id="job-history-country"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>City*</label>
                                                                <select id="job-history-city"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Company*</label>
                                                                <input type="text"
                                                                       id="job-history-company"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Info*</label>
                                                                <input type="text"
                                                                       id="job-history-info"
                                                                       class="form-control"
                                                                       placeholder="Info"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button id="add-job-history" type="button" class="btn btn-primary">
                                                        Add Job History
                                                    </button>
                                                    <div id="job-history-table" class="table-responsive">
                                                        <table id="job-history-list" class="table table-striped">
                                                            <thead>
                                                            <tr>
                                                                <th>Start Date</th>
                                                                <th>End Date</th>
                                                                <th>Company</th>
                                                                <th>Position</th>
                                                                <th>Country</th>
                                                                <th>City</th>
                                                                <th>Info</th>
                                                                <th>Actions</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div id="step-3">
                                                    <h2>Educations</h2>
                                                    <div id="form-step-2" role="form" data-toggle="validator">
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>Degree</label>
                                                                <select id="education-degree"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Start Date*</label>
                                                                <input type="text"
                                                                       id="education-start-date"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>End date</label>
                                                                <input type="text"
                                                                       id="education-end-date"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>Country*</label>
                                                                <select id="education-country"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>Education Organization</label>
                                                                <select id="education-organization"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Graduated</label>
                                                                <input type="checkbox"
                                                                       id="education-graduated"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button id="add-education" type="button" class="btn btn-primary">
                                                        Add Education
                                                    </button>
                                                    <div id="education-table" class="table-responsive">
                                                        <table id="education-list" class="table table-striped">
                                                            <thead>
                                                            <tr>
                                                                <th>Degree</th>
                                                                <th>Start Date</th>
                                                                <th>End Date</th>
                                                                <th>Country</th>
                                                                <th>Education Organziation</th>
                                                                <th>Graduated</th>
                                                                <th>Action</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div id="step-4">
                                                    <h2>Certificates</h2>
                                                    <div id="form-step-3" role="form" data-toggle="validator">
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Certificate Date*</label>
                                                                <input type="text"
                                                                       id="certificate-date"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Title*</label>
                                                                <input type="text"
                                                                       id="certificate-title"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Organization*</label>
                                                                <input type="text"
                                                                       id="certificate-organization"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>File*</label>
                                                                <input type="file"
                                                                       id="certificate-file"
                                                                       name="certificate-file"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <button id="add-certificate" type="button"
                                                                class="btn btn-primary">
                                                            Add Education
                                                        </button>
                                                    </div>
                                                </div>
                                                <div id="step-5">
                                                    <h2>Language Skills</h2>
                                                    <div id="form-step-4" role="form" data-toggle="validator">
                                                        <div class="col-md-4 col-sm-12">
                                                            <div class="form-group">
                                                                <label>Language</label>
                                                                <select id="language"
                                                                        class="form-control"
                                                                        data-live-search="true">
                                                                    <option value="-1">Select</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <label>Reading</label> <br>
                                                            <form class="range-field">
                                                                <input type="range" id="reading" min="0" max="10"/>
                                                                <span id="reading-value"></span>
                                                            </form>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <label>Speaking</label>
                                                            <form class="range-field">
                                                                <input type="range" id="speaking" min="0" max="10"/>
                                                                <span id="speaking-value"></span>
                                                            </form>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <label>Writing</label> &nbsp;
                                                            <form class="range-field">
                                                                <input type="range" id="writing" min="0" max="10"/>
                                                                <span id="writing-value"></span>
                                                            </form>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <label>Listening</label> &nbsp;
                                                            <form class="range-field">
                                                                <input type="range" id="listening" min="0" max="10"/>
                                                                <span id="listening-value"></span>
                                                            </form>
                                                        </div>
                                                        <button id="add-language" type="button"
                                                                class="btn btn-primary">
                                                            Add Language
                                                        </button>
                                                        <div id="language-table" class="table-responsive">
                                                            <table id="language-list" class="table table-striped">
                                                                <thead>
                                                                <tr>
                                                                    <th>Language</th>
                                                                    <th>Reading</th>
                                                                    <th>Speaking</th>
                                                                    <th>Writing</th>
                                                                    <th>Listening</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="step-6">
                                                    <h2>Skills</h2>
                                                    <div id="form-step-5" role="form" data-toggle="validator">
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Name*</label>
                                                                <input type="text"
                                                                       id="skill-name"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 col-sm-12">
                                                            <label>Level</label> <br>
                                                            <form class="range-field">
                                                                <input type="range" id="skill-level" min="0" max="10"/>
                                                                <span id="skill-level-value"></span>
                                                            </form>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                                            <div class="form-group">
                                                                <label>Info</label>
                                                                <input type="text"
                                                                       id="skill-info"
                                                                       class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <button id="add-skill" type="button"
                                                                class="btn btn-primary">
                                                            Add Skill
                                                        </button>
                                                        <div id="skill-table" class="table-responsive">
                                                            <table id="skill-list" class="table table-striped">
                                                                <thead>
                                                                <tr>
                                                                    <th>Name</th>
                                                                    <th>Level</th>
                                                                    <th>Info</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="update-job-history-modal" tabindex="-1" role="dialog"
     aria-labelledby="update-job-history-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="update-job-history-modal-label">Edit Job History</h5>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Start Date*</label>
                            <input id="update-job-history-start-date" name="update-job-history-start-date" value=""
                                   type="text" class="form-control"
                                   placeholder="Start Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>End Date</label>
                            <input id="update-job-history-end-date" name="update-job-history-end-date" value=""
                                   type="text" class="form-control"
                                   placeholder="End Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Company*</label>
                            <input id="update-job-history-company" name="update-job-history-company" value=""
                                   type="text" class="form-control"
                                   placeholder="Company">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Position*</label>
                            <input id="update-job-history-position" name="update-job-history-position" value=""
                                   type="text" class="form-control"
                                   placeholder="Position">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Country*</label>
                            <select id="update-job-history-country" class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>City*</label>
                            <select id="update-job-history-city" class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Info</label>
                            <textarea id="update-job-history-info" name="edit-info" class="form-control"
                                      aria-label="Info"
                                      placeholder="Info"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button id="save-job-history" type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="update-education-modal" tabindex="-1" role="dialog"
     aria-labelledby="update-education-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="update-education-modal-label">Edit Education</h5>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Degree</label>
                            <select id="update-education-degree"
                                    class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Start Date*</label>
                            <input id="update-education-start-date" name="update-education-start-date" value=""
                                   type="text" class="form-control"
                                   placeholder="Start Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>End Date</label>
                            <input id="update-education-end-date" name="update-education-end-date" value="" type="text"
                                   class="form-control"
                                   placeholder="End Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Country*</label>
                            <select id="update-education-country" class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Education Organization</label>
                            <select id="update-education-organization"
                                    class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Graduated</label>
                            <input type="checkbox"
                                   id="education-graduated"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button id="save-education" type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="update-language-modal" tabindex="-1" role="dialog"
     aria-labelledby="update-language-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="update-language-modal-label">Edit Language</h5>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Language</label>
                            <select id="update-language"
                                    class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Reading</label> <br>
                            <form class="range-field">
                                <input type="range" id="update-reading" min="0" max="10"/>
                                <span id="update-reading-value"></span>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Speaking</label>
                            <form class="range-field">
                                <input type="range" id="update-speaking" min="0" max="10"/>
                                <span id="update-speaking-value"></span>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Writing</label> &nbsp;
                            <form class="range-field">
                                <input type="range" id="update-writing" min="0" max="10"/>
                                <span id="update-writing-value"></span>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Listening</label> &nbsp;
                            <form class="range-field">
                                <input type="range" id="update-listening" min="0" max="10"/>
                                <span id="update-listening-value"></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button id="save-language" type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="update-skill-modal" tabindex="-1" role="dialog"
     aria-labelledby="update-language-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="update-skill-modal-label">Edit Language</h5>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Name*</label>
                            <input type="text"
                                   id="update-skill-name"
                                   name="update-skill-name"
                                   class="form-control"/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>Level</label> <br>
                            <form class="range-field">
                                <input type="range" id="update-skill-level" min="0" max="10"/>
                                <span id="update-skill-level-value"></span>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="form-group">
                                <label>Info</label>
                                <input type="text"
                                       id="update-skill-info"
                                       name="update-skill-info"
                                       class="form-control"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button id="save-skill" type="button" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- bootstrap -->
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

<!-- bootstrap-select -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

<!-- smartwizard -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
<script type="text/javascript" src="../smartwizard/js/jquery.smartWizard.min.js"></script>

<!-- datepicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- validator -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script>
    var readingSlider = document.getElementById("reading");
    var readingOutput = document.getElementById("reading-value");
    readingOutput.innerHTML = readingSlider.value;

    readingSlider.oninput = function () {
        readingOutput.innerHTML = this.value;
    }
    var speakingSlider = document.getElementById("speaking");
    var sepakingOutput = document.getElementById("speaking-value");
    sepakingOutput.innerHTML = speakingSlider.value;

    speakingSlider.oninput = function () {
        sepakingOutput.innerHTML = this.value;
    }
    var writingSlider = document.getElementById("writing");
    var writingOutput = document.getElementById("writing-value");
    writingOutput.innerHTML = writingSlider.value;

    writingSlider.oninput = function () {
        writingOutput.innerHTML = this.value;
    }
    var listeningSlider = document.getElementById("listening");
    var listeningOutput = document.getElementById("listening-value");
    listeningOutput.innerHTML = listeningSlider.value;

    listeningSlider.oninput = function () {
        listeningOutput.innerHTML = this.value;
    }

    var updateReadingSlider = document.getElementById("update-reading");
    var updateReadingOutput = document.getElementById("update-reading-value");
    updateReadingOutput.innerHTML = updateReadingSlider.value;

    updateReadingSlider.oninput = function () {
        updateReadingOutput.innerHTML = this.value;
    }
    var updateSpeakingSlider = document.getElementById("update-speaking");
    var updateSpeakingOutput = document.getElementById("update-speaking-value");
    updateSpeakingOutput.innerHTML = updateSpeakingSlider.value;

    updateSpeakingSlider.oninput = function () {
        updateSpeakingOutput.innerHTML = this.value;
    }
    var updateWritingSlider = document.getElementById("update-writing");
    var updateWritingOutput = document.getElementById("update-writing-value");
    updateWritingOutput.innerHTML = updateWritingSlider.value;

    updateWritingSlider.oninput = function () {
        updateWritingOutput.innerHTML = this.value;
    }
    var updateListeningSlider = document.getElementById("update-listening");
    var updateListeningOutput = document.getElementById("update-listening-value");
    updateListeningOutput.innerHTML = updateListeningSlider.value;

    updateListeningSlider.oninput = function () {
        updateListeningOutput.innerHTML = this.value;
    }
    var skillLevelSlider = document.getElementById("skill-level");
    var skillLevelOutput = document.getElementById("skill-level-value");
    skillLevelOutput.innerHTML = skillLevelSlider.value;

    skillLevelSlider.oninput = function () {
        skillLevelOutput.innerHTML = this.value;
    }
    var updateSkillLevelSlider = document.getElementById("update-skill-level");
    var updateSkillLevelOutput = document.getElementById("update-skill-level-value");
    updateSkillLevelOutput.innerHTML = updateSkillLevelSlider.value;

    updateSkillLevelSlider.oninput = function () {
        updateSkillLevelOutput.innerHTML = this.value;
    }
</script>
<script>
    $(document).ready(function () {

        var btnExit = $('<button></button>').text('Exit')
            .addClass('btn btn-danger')
            .on('click', function () {
                $.ajax({
                    method: 'get',
                    url: '/candidates',
                    success: function (date) {
                        window.location.href = "http://localhost:8080/admin/candidates";
                    }
                });
            });

        $('#smartwizard').smartWizard({
            selected: 0,
            theme: 'dots',
            transitionEffect: 'fade',
            toolbarSettings: {
                toolbarPosition: 'bottom',
                toolbarExtraButtons: [btnExit]
            },
            anchorSettings: {
                markDoneStep: true, // add done css
                markAllPreviousStepsAsDone: true, // When a step selected by url hash, all previous steps are marked done
                removeDoneStepOnNavigateBack: true, // While navigate back done step after active step will be cleared
                enableAnchorOnDoneStep: true // Enable/Disable the done steps navigation
            }
        });

        var candidateId;
        $("#smartwizard").on("leaveStep", function (e, anchorObject, stepNumber, stepDirection) {
            var elmForm = $("#form-step-" + stepNumber);
            if (stepDirection === 'forward' && elmForm) {
                elmForm.validator('validate');
                var elmErr = elmForm.children('.has-error');
                if (elmErr && elmErr.length > 0) {
                    // Form validation failed
                    return false;
                }
            }

            if (stepNumber === 0) {
                var name = $('#candidate-name').val();
                var surname = $('#candidate-surname').val();
                var email = $('#candidate-email').val();
                var mobile = $('#candidate-mobile').val();
                var phone = $('#candidate-phone').val();
                var password = $('#candidate-password').val();
                var passwordConfirmation = $('#candidate-password-confirm').val();
                var salaryMin = $('#candidate-min-salary').val();
                var salaryMax = $('#candidate-max-salary').val();
                var birthDate = $('#candidate-birthdate').val();
                var degree = document.getElementById('candidate-degree');
                var degreeId = degree.options[degree.selectedIndex].value;
                var degreeName = degree.options[degree.selectedIndex].text;
                var position = $('#candidate-position').val();
                var country = document.getElementById('candidate-country');
                var countryId = country.options[country.selectedIndex].value;
                var countryName = country.options[country.selectedIndex].text;
                var city = document.getElementById('candidate-city');
                var cityId = city.options[city.selectedIndex].value;
                var cityName = city.options[city.selectedIndex].text;
                var info = $('#candidate-info').val();
                var linkedin = $('#candidate-linkedin').val();
                var github = $('#candidate-github').val();
                var gitlab = $('#candidate-gitlab').val();
                var facebook = $('#candidate-facebook').val();
                var twitter = $('#candidate-twitter').val();
                var instagram = $('#candidate-instagram').val();

                var candidate = {
                    'user': {
                        'name': name,
                        'surname': surname,
                        'email': email,
                        'password': password,
                        'mobile': mobile,
                        'phone': phone
                    },
                    'salaryMin': salaryMin,
                    'salaryMax': salaryMax,
                    'birthDate': birthDate,
                    'degree': {
                        'id': degreeId
                    },
                    'position': position,
                    'address': {
                        'country': {
                            'id': countryId
                        },
                        'city': {
                            'id': cityId
                        },
                        'info': info
                    },
                    'linkedin': linkedin,
                    'github': github,
                    'gitlab': gitlab,
                    'facebook': facebook,
                    'twitter': twitter,
                    'instagram': instagram
                };

                var json = JSON.stringify(candidate);
                $.ajax({
                    method: 'post',
                    url: 'rest/candidates/',
                    contentType: 'application/json',
                    data: json,
                    success: function (data) {
                        candidateId = data.id;
                        return true;
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                        return false;
                    }
                });
            }
            if (stepNumber === 1) {

            }
            return true;
        });

        $("#smartwizard").on("showStep", function (e, anchorObject, stepNumber, stepDirection) {
            // Enable finish button only on last step
            if (stepNumber == 5) {
                $('.btn-finish').removeClass('disabled');
            } else {
                $('.btn-finish').addClass('disabled');
            }
        });

        $.fn.selectpicker.Constructor.BootstrapVersion = '4';
        $('#candidate-country').selectpicker();
        $('#candidate-city').selectpicker();
        $('#candidate-degree').selectpicker();
        $('#job-history-country').selectpicker();
        $('#job-history-city').selectpicker();
        $('#update-job-history-country').selectpicker();
        $('#update-job-history-city').selectpicker();
        $('#education-degree').selectpicker();
        $('#education-country').selectpicker();
        $('#education-organization').selectpicker();
        $('#update-education-country').selectpicker();
        $('#update-education-organization').selectpicker();
        $('#update-education-degree').selectpicker();
        $('#language').selectpicker();

        $(function () {
            $("#candidate-birthdate").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#job-history-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#job-history-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#update-job-history-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#update-job-history-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#education-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#education-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#update-education-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#update-education-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#certificate-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $.ajax({
            url: 'rest/country',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#candidate-country').append(o);
                }
                $('#candidate-country').selectpicker('refresh');
            }
        });
        $('#candidate-country').on('change', function () {
            var countryId = $('#candidate-country option:selected').val();
            $.ajax({
                url: 'rest/city/' + countryId,
                success: function (data) {
                    $('#candidate-city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#candidate-city').append(o);
                    }
                    $('#candidate-city').selectpicker('refresh');
                }
            });
        });
        $.ajax({
            method: 'get',
            url: 'rest/degree',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#candidate-degree').append(o);
                }
                $('#candidate-degree').selectpicker('refresh');
            }
        });
        $.ajax({
            url: 'rest/country',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#job-history-country').append(o);
                }
                $('#job-history-country').selectpicker('refresh');
            }
        });
        $('#job-history-country').on('change', function () {
            var countryId = $('#job-history-country option:selected').val();
            $.ajax({
                url: 'rest/city/' + countryId,
                success: function (data) {
                    $('#job-history-city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#job-history-city').append(o);
                    }
                    $('#job-history-city').selectpicker('refresh');
                }
            });
        });
        $.ajax({
            url: 'rest/country',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#update-job-history-country').append(o);
                }
                $('#update-job-history-country').selectpicker('refresh');
            }
        });
        $('#update-job-history-country').on('change', function () {
            var countryId = $('#update-job-history-country option:selected').val();
            $.ajax({
                url: 'rest/city/' + countryId,
                success: function (data) {
                    $('#update-job-history-city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#update-job-history-city').append(o);
                    }
                    $('#update-job-history-city').selectpicker('refresh');
                }
            });
        });
        $.ajax({
            method: 'get',
            url: 'rest/degree',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#education-degree').append(o);
                }
                $('#education-degree').selectpicker('refresh');
            }
        });
        $.ajax({
            url: 'rest/country',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#education-country').append(o);
                }
                $('#education-country').selectpicker('refresh');
            }
        });
        $.ajax({
            method: 'get',
            url: 'rest/education-organization',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#education-organization').append(o);
                }
                $('#education-organization').selectpicker('refresh');
            }
        });
        $.ajax({
            method: 'get',
            url: 'rest/degree',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#update-education-degree').append(o);
                }
                $('#update-education-degree').selectpicker('refresh');
            }
        });
        $.ajax({
            url: 'rest/country',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#update-education-country').append(o);
                }
                $('#update-education-country').selectpicker('refresh');
            }
        });
        $.ajax({
            method: 'get',
            url: 'rest/education-organization',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#update-education-organization').append(o);
                }
                $('#update-education-organization').selectpicker('refresh');
            }
        });
        $.ajax({
            method: 'get',
            url: 'rest/language',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#language').append(o);
                }
                $('#language').selectpicker('refresh');
            }
        });
        $.ajax({
            method: 'get',
            url: 'rest/language',
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    var o = new Option(data[i].name, data[i].id);
                    $('#update-language').append(o);
                }
                $('#update-language').selectpicker('refresh');
            }
        });

        $('#add-job-history').on('click', function () {
            var startDate = $('#job-history-start-date').val();
            var endDate = $('#job-history-end-date').val();
            var company = $('#job-history-company').val();
            var position = $('#job-history-info').val();
            var country = document.getElementById('job-history-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;
            var city = document.getElementById('job-history-city');
            var cityId = city.options[city.selectedIndex].value;
            var cityName = city.options[city.selectedIndex].text;
            var info = $('#job-history-info').val();

            var jobHistory = {
                'company': company,
                'position': position,
                'info': info,
                'startDate': startDate,
                'endDate': endDate,
                'country': {
                    'id': countryId
                },
                'city': {
                    'id': cityId
                }
            };

            var json = JSON.stringify(jobHistory);

            $.ajax({
                method: 'post',
                url: '/rest/candidates/' + candidateId + '/job-history',
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    getJobHistoryList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });
        var jobHistoryId;
        $('#update-job-history-modal').on('show.bs.modal', function (e) {
            var opener = e.relatedTarget;

            jobHistoryId = $(opener).attr('edit-job-history-id');
            var startDate = $(opener).attr('edit-job-history-start-date');
            var endDate = $(opener).attr('edit-job-history-end-date');
            var company = $(opener).attr('edit-job-history-company');
            var position = $(opener).attr('edit-job-history-position');
            // var countryId = $(opener).attr('edit-job-history-country-id');
            // var cityId = $(opener).attr('edit-job-history-city-id');
            var info = $(opener).attr('edit-job-history-info');

            $('#update-job-history-modal').find('[name="update-job-history-start-date"]').val(startDate);
            $('#update-job-history-modal').find('[name="update-job-history-end-date"]').val(endDate);
            $('#update-job-history-modal').find('[name="update-job-history-company"]').val(company);
            $('#update-job-history-modal').find('[name="update-job-history-position"]').val(position);
            // $('#update-job-history-modal').find('[name="update-job-history-country"]').val(countryId);
            // $('#update-job-history-modal').find('[name="update-job-history-city"]').val(cityId);
            $('#update-job-history-modal').find('[name="update-job-history-info"]').val(info);
        });
        $('#save-job-history').on('click', function () {
            var startDate = $('#update-job-history-start-date').val();
            var endDate = $('#update-job-history-end-date').val();
            var company = $('#update-job-history-company').val();
            var position = $('#update-job-history-position').val();
            var country = document.getElementById('update-job-history-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;
            var city = document.getElementById('update-job-history-city');
            var cityId = city.options[city.selectedIndex].value;
            var cityName = city.options[city.selectedIndex].text;
            var info = $('#update-job-history-info').val();

            var jobHistory = {
                'startDate': startDate,
                'endDate': endDate,
                'company': company,
                'position': position,
                'country': {
                    'id': countryId
                },
                'city': {
                    'id': cityId
                },
                'info': info
            };

            var json = JSON.stringify(jobHistory);

            $.ajax({
                method: "PUT",
                url: 'rest/candidates/' + candidateId + '/job-history/' + jobHistoryId,
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    $('#update-job-history-modal').modal('hide');
                    getJobHistoryList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });

        $('#add-education').on('click', function () {
            var degree = document.getElementById('education-degree');
            var degreeId = degree.options[degree.selectedIndex].value;
            var degreeName = degree.options[degree.selectedIndex].text;
            var startDate = $('#education-start-date').val();
            var endDate = $('#education-end-date').val();
            var country = document.getElementById('education-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;
            var educationOrganization = document.getElementById('education-organization');
            var educationOrganizationId = educationOrganization.options[educationOrganization.selectedIndex].value;
            var educationOrganizationName = educationOrganization.options[educationOrganization.selectedIndex].text;
            var graduated = ($('#education-graduated').is(":checked")) ? 1 : 0;

            var education = {
                'degree': {
                    'id': degreeId
                },
                'startDate': startDate,
                'endDate': endDate,
                'country': {
                    'id': countryId
                },
                'educationOrganization': {
                    'id': educationOrganizationId
                },
                'graduated': graduated
            };

            var json = JSON.stringify(education);

            $.ajax({
                method: 'post',
                url: '/rest/candidates/' + candidateId + '/educations',
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    getEducationList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });
        var educationId;
        $('#update-education-modal').on('show.bs.modal', function (e) {
            var opener = e.relatedTarget;

            educationId = $(opener).attr('edit-education-id');
            var degreeId = $(opener).attr('edit-education-degree');
            var startDate = $(opener).attr('edit-education-start-date');
            var endDate = $(opener).attr('edit-education-end-date');
            var educationOrganizationId = $(opener).attr('edit-education-education-organization');
            var position = $(opener).attr('edit-job-history-position');
            // var countryId = $(opener).attr('edit-education-country-id');
            // var graduated = $(opener).attr('edit-education-graduated');

            $('#update-education-modal').find('[name="update-education-start-date"]').val(startDate);
            $('#update-education-modal').find('[name="update-education-end-date"]').val(endDate);
        });
        $('#save-education').on('click', function () {
            var degree = document.getElementById('update-education-degree');
            var degreeId = degree.options[degree.selectedIndex].value;
            var degreeName = degree.options[degree.selectedIndex].text;
            var startDate = $('#update-education-start-date').val();
            var endDate = $('#update-education-end-date').val();
            var country = document.getElementById('update-education-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;
            var educationOrganization = document.getElementById('update-education-organization');
            var educationOrganizationId = educationOrganization.options[educationOrganization.selectedIndex].value;
            var educationOrganizationName = educationOrganization.options[educationOrganization.selectedIndex].text;
            var graduated = ($('#update-education-graduated').is(":checked")) ? 1 : 0;

            var education = {
                'degree': {
                    'id': degreeId
                },
                'startDate': startDate,
                'endDate': endDate,
                'country': {
                    'id': countryId
                },
                'educationOrganization': {
                    'id': educationOrganizationId
                },
                'graduated': graduated
            };

            var json = JSON.stringify(education);

            $.ajax({
                method: 'put',
                url: '/rest/candidates/' + candidateId + '/educations/' + educationId,
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    $('#update-education-modal').modal('hide');
                    getEducationList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });

        $('#add-certificate').on('click', function () {
            var certificateDate = $('#certificate-date').val();
            var title = $('#certificate-title').val();
            var organization = $('#certificate-organization').val();
            var file = $('input[name="certificate-file"]').get(0).files[0];

            var formData = new FormData();
            formData.append('certificateDate', certificateDate);
            formData.append('title', title);
            formData.append('organization', organization);
            formData.append('file', file);

            $.ajax({
                type: "POST",
                url: '/rest/candidates/' + candidateId + '/certificates',
                data: formData,
                contentType: false,
                processData: false,
                cache: false,
                complete: function (data) {
                    alert("success");
                }
            });
        });

        $('#add-language').on('click', function () {
            var language = document.getElementById('language');
            var languageId = language.options[language.selectedIndex].value;
            var languageName = language.options[language.selectedIndex].text;
            var reading = document.getElementById("reading").value;
            var speaking = document.getElementById("speaking").value;
            var writing = document.getElementById("writing").value;
            var listening = document.getElementById("listening").value;

            var languageSkill = {
                'language': {
                    'id': languageId
                },
                'reading': reading,
                'speaking': speaking,
                'writing': writing,
                'listening': listening
            };

            var json = JSON.stringify(languageSkill);

            $.ajax({
                method: 'post',
                url: '/rest/candidates/' + candidateId + '/languages',
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    getLanguageSkillList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });
        var languageSkillId;
        $('#update-language-modal').on('show.bs.modal', function (e) {
            var opener = e.relatedTarget;

            languageSkillId = $(opener).attr('edit-language-id');
            var reading = $(opener).attr('edit-reading');
            var speaking = $(opener).attr('edit-speaking');
            var writing = $(opener).attr('edit-writing');
            var listening = $(opener).attr('listening');
        });
        $('#save-language').on('click', function () {
            var language = document.getElementById('update-language');
            var languageId = language.options[language.selectedIndex].value;
            var languageName = language.options[language.selectedIndex].text;
            var reading = document.getElementById("update-reading").value;
            var speaking = document.getElementById("update-speaking").value;
            var writing = document.getElementById("update-writing").value;
            var listening = document.getElementById("update-listening").value;

            var languageSkill = {
                'language': {
                    'id': languageId
                },
                'reading': reading,
                'speaking': speaking,
                'writing': writing,
                'listening': listening
            };

            var json = JSON.stringify(languageSkill);

            $.ajax({
                method: 'put',
                url: '/rest/candidates/' + candidateId + '/languages/' + languageSkillId,
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    $('#update-language-modal').modal('hide');
                    getLanguageSkillList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });

        $('#add-skill').on('click', function () {
            var name = $('#skill-name').val();
            var level = document.getElementById("skill-level").value;
            var info = $('#skill-info').val();

            var skill = {
                'name': name,
                'level': level,
                'info': info
            };

            var json = JSON.stringify(skill);

            $.ajax({
                method: 'post',
                url: '/rest/candidates/' + candidateId + '/skills',
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    getSkillList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });
        var skillId;
        $('#update-skill-modal').on('show.bs.modal', function (e) {
            var opener = e.relatedTarget;

            skillId = $(opener).attr('edit-skill-id');
            var name = $(opener).attr('edit-skill-name');
            var level = $(opener).attr('edit-skill-level');
            var info = $(opener).attr('edit-skill-info');

            $('#update-skill-modal').find('[name="update-skill-name"]').val(name);
            $('#update-skill-modal').find('[name="update-skill-info"]').val(info);
        });
        $('#save-skill').on('click', function () {
            var name = $('#update-skill-name').val();
            var level = document.getElementById("update-skill-level").value;
            var info = $('#update-skill-info').val();

            var skill = {
                'name': name,
                'level': level,
                'info': info
            };

            var json = JSON.stringify(skill);

            $.ajax({
                method: 'put',
                url: '/rest/candidates/' + candidateId + '/skills/' + skillId,
                contentType: 'application/json',
                data: json,
                async: false,
                success: function (response) {
                    $('#update-skill-modal').modal('hide');
                    getSkillList(candidateId);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });
        });

    });

    function deleteJobHistory(candidateId, jobHistoryId) {
        $.ajax({
            url: 'rest/candidates/' + candidateId + '/job-history/' + jobHistoryId,
            type: 'DELETE',
            success: function () {
                getJobHistoryList(candidateId);
            }
        });
    }

    function getJobHistoryList(candidateId) {
        $('#job-history-table').load(window.location.href + ' #job-history-table');
        $.ajax({
            method: 'GET',
            url: '/rest/candidates/' + candidateId + '/job-history',
            success: function (response) {
                $.each(response, function (i, item) {
                    var newRow = $("<tr>");
                    var cols = "";
                    cols += '<td>' + item.startDate + '</td>';
                    cols += '<td>' + item.endDate + '</td>';
                    cols += '<td>' + item.company + '</td>';
                    cols += '<td>' + item.position + '</td>';
                    cols += '<td>' + item.country.name + '</td>';
                    cols += '<td>' + item.city.name + '</td>';
                    cols += '<td>' + item.info + '</td>';
                    cols += '<td>' +
                        '<input type="button" ' +
                        'edit-job-history-id="' + item.id + '" ' +
                        'edit-job-history-start-date="' + item.startDate + '" ' +
                        'edit-job-history-end-date="' + item.endDate + '" ' +
                        'edit-job-history-company="' + item.company + '" ' +
                        'edit-job-history-position="' + item.position + '" ' +
                        'edit-job-history-country-id="' + item.country.id + '" ' +
                        'edit-job-history-city-id="' + item.city.id + '" ' +
                        'edit-job-history-info="' + item.info + '" ' +
                        'data-toggle="modal" ' +
                        'data-target="#update-job-history-modal"' +
                        'class="btn btn-primary" ' +
                        'value="Edit">&nbsp;' +
                        '<input type="button" ' +
                        'class="ibtnDel btn btn-md btn-danger" ' +
                        'onclick="deleteJobHistory(' + item.candidateId + ', ' + item.id + ')" ' +
                        'value="Delete">' +
                        '</td>';
                    newRow.append(cols);
                    $('#job-history-list').append(newRow);
                });
            }
        });
    }

    function getEducationList(candidateId) {
        $('#education-table').load(window.location.href + ' #education-table');
        $.ajax({
            method: 'GET',
            url: '/rest/candidates/' + candidateId + '/educations',
            success: function (response) {
                $.each(response, function (i, item) {
                    var newRow = $("<tr>");
                    var cols = "";
                    var graduated = item.graduated === 1 ? 'Yes' : 'No';
                    cols += '<td>' + item.degree.name + '</td>';
                    cols += '<td>' + item.startDate + '</td>';
                    cols += '<td>' + item.endDate + '</td>';
                    cols += '<td>' + item.country.name + '</td>';
                    cols += '<td>' + item.educationOrganization.name + '</td>';
                    cols += '<td>' + graduated + '</td>';
                    cols += '<td>' +
                        '<input type="button" ' +
                        'edit-education-id="' + item.id + '" ' +
                        'edit-education-degree="' + item.degree.id + '" ' +
                        'edit-education-start-date="' + item.startDate + '" ' +
                        'edit-education-end-date="' + item.endDate + '" ' +
                        'edit-education-country-id="' + item.country.id + '" ' +
                        'edit-education-education-organization="' + item.educationOrganization.id + '" ' +
                        'edit-education-graduated="' + item.graduated + '" ' +
                        'data-toggle="modal" ' +
                        'data-target="#update-education-modal"' +
                        'class="btn btn-primary" ' +
                        'value="Edit">&nbsp;' +
                        '<input type="button" ' +
                        'class="ibtnDel btn btn-md btn-danger" ' +
                        'onclick="deleteEducation(' + item.candidateId + ', ' + item.id + ')" ' +
                        'value="Delete">' +
                        '</td>';
                    newRow.append(cols);
                    $('#education-list').append(newRow);
                });
            }
        });
    }

    function deleteEducation(candidateId, educationId) {
        $.ajax({
            url: 'rest/candidates/' + candidateId + '/educations/' + educationId,
            type: 'DELETE',
            success: function () {
                getEducationList(candidateId);
            }
        });
    }

    function getLanguageSkillList(candidateId) {
        $('#language-table').load(window.location.href + ' #language-table');
        $.ajax({
            method: 'GET',
            url: '/rest/candidates/' + candidateId + '/languages',
            success: function (response) {
                $.each(response, function (i, item) {
                    var newRow = $("<tr>");
                    var cols = "";
                    cols += '<td>' + item.language.name + '</td>';
                    cols += '<td>' + item.reading + '</td>';
                    cols += '<td>' + item.speaking + '</td>';
                    cols += '<td>' + item.writing + '</td>';
                    cols += '<td>' + item.listening + '</td>';
                    cols += '<td>' +
                        '<input type="button" ' +
                        'edit-language-id="' + item.id + '" ' +
                        'edit-reading="' + item.reading + '" ' +
                        'edit-speaking="' + item.speaking + '" ' +
                        'edit-writing="' + item.writing + '" ' +
                        'edit-listening="' + item.listening + '" ' +
                        'data-toggle="modal" ' +
                        'data-target="#update-language-modal"' +
                        'class="btn btn-primary" ' +
                        'value="Edit">&nbsp;' +
                        '<input type="button" ' +
                        'class="ibtnDel btn btn-md btn-danger" ' +
                        'onclick="deleteLanguageSkill(' + item.candidateId + ', ' + item.id + ')" ' +
                        'value="Delete">' +
                        '</td>';
                    newRow.append(cols);
                    $('#language-list').append(newRow);
                });
            }
        });
    }

    function deleteLanguageSkill(candidateId, languageSkillId) {
        $.ajax({
            url: 'rest/candidates/' + candidateId + '/languages/' + languageSkillId,
            type: 'DELETE',
            success: function () {
                getLanguageSkillList(candidateId);
            }
        });
    }

    function getSkillList(candidateId) {
        $('#skill-table').load(window.location.href + ' #skill-table');
        $.ajax({
            method: 'GET',
            url: '/rest/candidates/' + candidateId + '/skills',
            success: function (response) {
                $.each(response, function (i, item) {
                    var newRow = $("<tr>");
                    var cols = "";
                    cols += '<td>' + item.name + '</td>';
                    cols += '<td>' + item.level + '</td>';
                    cols += '<td>' + item.info + '</td>';
                    cols += '<td>' +
                        '<input type="button" ' +
                        'edit-skill-id="' + item.id + '" ' +
                        'edit-skill-name="' + item.name + '" ' +
                        'edit-skill-level="' + item.level + '" ' +
                        'edit-skill-info="' + item.info + '" ' +
                        'data-toggle="modal" ' +
                        'data-target="#update-skill-modal"' +
                        'class="btn btn-primary" ' +
                        'value="Edit">&nbsp;' +
                        '<input type="button" ' +
                        'class="ibtnDel btn btn-md btn-danger" ' +
                        'onclick="deleteSkill(' + item.candidateId + ', ' + item.id + ')" ' +
                        'value="Delete">' +
                        '</td>';
                    newRow.append(cols);
                    $('#skill-list').append(newRow);
                });
            }
        });
    }

    function deleteSkill(candidateId, skillId) {
        $.ajax({
            url: 'rest/candidates/' + candidateId + '/skills/' + skillId,
            type: 'DELETE',
            success: function () {
                getSkillList(candidateId);
            }
        });
    }

</script>

</body>
</html>