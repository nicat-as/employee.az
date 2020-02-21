<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="csrf-token" content="uogU0NLGkPSmzjE9jSDDXdbL7VZZSWhwfcykYUO7">
    <link rel="icon" href="../assets/images/favicon.html" type="image/x-icon"> <!-- Favicon-->
    <title>Candidate</title>
    <meta name="description" content="Laravel">
    <meta name="author" content="Laravel">
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css">

    <!-- Custom Css -->
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="stylesheet" href="../assets/css/theme1.css">
</head>

<body class="font-montserrat">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
    </div>
</div>

<div id="main_content">
    <div id="header_top" class="header_top">
        <div class="container">
            <div class="hleft">
                <a class="header-brand" href="index.jsp"><i class="fe fe-command brand-logo"></i></a>
                <div class="dropdown">
                    <a href="../pages/search.jsp" class="nav-link icon"><i class="fa fa-search"></i></a>
                    <a href="../pages/calendar.jsp" class="nav-link icon app_inbox"><i class="fa fa-calendar"></i></a>
                    <a href="../pages/contact.jsp" class="nav-link icon xs-hide"><i class="fa fa-id-card-o"></i></a>
                    <a href="../chatapp/chat.jsp" class="nav-link icon xs-hide"><i class="fa fa-comments-o"></i></a>
                    <a href="../pages/filemanager.jsp" class="nav-link icon app_file xs-hide"><i
                            class="fa fa-folder-o"></i></a>
                </div>
            </div>
            <div class="hright">
                <div class="dropdown">
                    <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fa fa-gear fa-spin"
                                                                                     data-toggle="tooltip"
                                                                                     data-placement="right"
                                                                                     title="Settings"></i></a>
                    <a href="javascript:void(0)" class="nav-link user_btn"><img class="avatar"
                                                                                src="../assets/images/user.png" alt=""
                                                                                data-toggle="tooltip"
                                                                                data-placement="right"
                                                                                title="User Menu"/></a>
                    <a href="javascript:void(0)" class="nav-link icon menu_toggle"><i class="fa  fa-align-left"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div id="rightsidebar" class="right_sidebar">
        <a href="javascript:void(0)" class="p-3 settingbar float-right"><i class="fa fa-close"></i></a>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Settings" aria-expanded="true">Settings</a>
            </li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#activity"
                                    aria-expanded="false">Activity</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane vivify fadeIn active" id="Settings" aria-expanded="true">
                <div class="mb-4">
                    <h6 class="font-14 font-weight-bold text-muted">Font Style</h6>
                    <div class="custom-controls-stacked font_setting">
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-opensans">
                            <span class="custom-control-label">Open Sans Font</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-montserrat"
                                   checked="">
                            <span class="custom-control-label">Montserrat Google Font</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="font" value="font-roboto">
                            <span class="custom-control-label">Robot Google Font</span>
                        </label>
                    </div>
                </div>
                <div class="mb-4">
                    <h6 class="font-14 font-weight-bold text-muted">Dropdown Menu Icon</h6>
                    <div class="custom-controls-stacked arrow_option">
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="marrow" value="arrow-a">
                            <span class="custom-control-label">A</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="marrow" value="arrow-b">
                            <span class="custom-control-label">B</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="marrow" value="arrow-c" checked="">
                            <span class="custom-control-label">C</span>
                        </label>
                    </div>
                    <h6 class="font-14 font-weight-bold mt-4 text-muted">SubMenu List Icon</h6>
                    <div class="custom-controls-stacked list_option">
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="listicon" value="list-a" checked="">
                            <span class="custom-control-label">A</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="listicon" value="list-b">
                            <span class="custom-control-label">B</span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" name="listicon" value="list-c">
                            <span class="custom-control-label">C</span>
                        </label>
                    </div>
                </div>
                <div>
                    <h6 class="font-14 font-weight-bold mt-4 text-muted">General Settings</h6>
                    <ul class="setting-list list-unstyled mt-1 setting_switch">
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Night Mode</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-darkmode">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Fix Navbar top</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-fixnavbar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Header Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-pageheader">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Min Sidebar Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-min_sidebar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Sidebar Dark</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-sidebar">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Icon Color</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-iconcolor">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Gradient Color</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-gradient">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Box Shadow</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-boxshadow">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">RTL Support</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-rtl">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                        <li>
                            <label class="custom-switch">
                                <span class="custom-switch-description">Box Layout</span>
                                <input type="checkbox" name="custom-switch-checkbox"
                                       class="custom-switch-input btn-boxlayout">
                                <span class="custom-switch-indicator"></span>
                            </label>
                        </li>
                    </ul>
                </div>
                <hr>
                <div class="form-group">
                    <label class="d-block">Storage <span class="float-right">77%</span></label>
                    <div class="progress progress-sm">
                        <div class="progress-bar" role="progressbar" aria-valuenow="77" aria-valuemin="0"
                             aria-valuemax="100" style="width: 77%;"></div>
                    </div>
                    <button type="button" class="btn btn-primary btn-block mt-3">Upgrade Storage</button>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane vivify fadeIn" id="activity" aria-expanded="false">
                <ul class="new_timeline mt-3">
                    <li>
                        <div class="bullet pink"></div>
                        <div class="time">11:00am</div>
                        <div class="desc">
                            <h3>Attendance</h3>
                            <h4>Computer Class</h4>
                        </div>
                    </li>
                    <li>
                        <div class="bullet pink"></div>
                        <div class="time">11:30am</div>
                        <div class="desc">
                            <h3>Added an interest</h3>
                            <h4>“Volunteer Activities”</h4>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">12:00pm</div>
                        <div class="desc">
                            <h3>Developer Team</h3>
                            <h4>Hangouts</h4>
                            <ul class="list-unstyled team-info margin-0 p-t-5">
                                <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">2:00pm</div>
                        <div class="desc">
                            <h3>Responded to need</h3>
                            <a href="javascript:void(0)">“In-Kind Opportunity”</a>
                        </div>
                    </li>
                    <li>
                        <div class="bullet orange"></div>
                        <div class="time">1:30pm</div>
                        <div class="desc">
                            <h3>Lunch Break</h3>
                        </div>
                    </li>
                    <li>
                        <div class="bullet green"></div>
                        <div class="time">2:38pm</div>
                        <div class="desc">
                            <h3>Finish</h3>
                            <h4>Go to Home</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="user_div">
        <h5 class="brand-name mb-4">Epic HR<a href="javascript:void(0)" class="user_btn"><i class="icon-logout"></i></a>
        </h5>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <img class="avatar avatar-xl mr-3" src="../assets/images/sm/avatar1.jpg" alt="avatar">
                    <div class="media-body">
                        <h5 class="m-0">Sara Hopkins</h5>
                        <p class="text-muted mb-0">Webdeveloper</p>
                        <ul class="social-links list-inline mb-0 mt-2">
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="Facebook"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="Twitter"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="1234567890"><i class="fa fa-phone"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip"
                                                            data-original-title="@skypename"><i class="fa fa-skype"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Statistics</h3>
                <div class="card-options">
                    <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i
                            class="fe fe-chevron-up"></i></a>
                    <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                </div>
            </div>
            <div class="card-body">
                <div class="text-center">
                    <div class="row">
                        <div class="col-6 pb-3">
                            <label class="mb-0">Balance</label>
                            <h4 class="font-30 font-weight-bold">$545</h4>
                        </div>
                        <div class="col-6 pb-3">
                            <label class="mb-0">Growth</label>
                            <h4 class="font-30 font-weight-bold">27%</h4>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="d-block">Total Income<span class="float-right">77%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="77" aria-valuemin="0"
                             aria-valuemax="100" style="width: 77%;"></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="d-block">Total Expenses <span class="float-right">50%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0"
                             aria-valuemax="100" style="width: 50%;"></div>
                    </div>
                </div>
                <div class="form-group mb-0">
                    <label class="d-block">Gross Profit <span class="float-right">23%</span></label>
                    <div class="progress progress-xs">
                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="23" aria-valuemin="0"
                             aria-valuemax="100" style="width: 23%;"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card b-none">
            <ul class="list-group">
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-blue"><i class="fa fa-credit-card"></i></div>
                    <div class="ml-3">
                        <div>+$29 New sale</div>
                        <a href="javascript:void(0)">Admin Template</a>
                        <div class="text-muted font-12">5 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-pink"><i class="fa fa-upload"></i></div>
                    <div class="ml-3">
                        <div>Project Update</div>
                        <a href="javascript:void(0)">New HTML page</a>
                        <div class="text-muted font-12">10 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-teal"><i class="fa fa-file-word-o"></i></div>
                    <div class="ml-3">
                        <div>You edited the file</div>
                        <a href="javascript:void(0)">reposrt.doc</a>
                        <div class="text-muted font-12">11 min ago</div>
                    </div>
                </li>
                <li class="list-group-item d-flex">
                    <div class="box-icon sm rounded bg-cyan"><i class="fa fa-user"></i></div>
                    <div class="ml-3">
                        <div>New user</div>
                        <a href="javascript:void(0)">Puffin web - view</a>
                        <div class="text-muted font-12">17 min ago</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="left-sidebar" class="sidebar ">
        <h5 class="brand-name">Epic HR <a href="javascript:void(0)" class="menu_option float-right"><i
                class="icon-grid font-16" data-toggle="tooltip" data-placement="left"
                title="Grid & List Toggle"></i></a></h5>
        <nav id="left-sidebar-nav" class="sidebar-nav">
            <ul class="metismenu">
                <li class="g_heading">Hr</li>
                <li class=""><a href="index.jsp"><i class="icon-speedometer"></i><span>Dashboard</span></a></li>
                <li class="active"><a href="users.jsp"><i class="icon-users"></i><span>Users</span></a></li>
                <li class=""><a href="departments.jsp"><i class="icon-control-pause"></i><span>Departments</span></a>
                </li>
                <li class=""><a href="employee.jsp"><i class="icon-user"></i><span>Employee</span></a></li>
                <li class=""><a href="activities.jsp"><i class="icon-equalizer"></i><span>Activities</span></a></li>
                <li class=""><a href="holidays.jsp"><i class="icon-like"></i><span>Holidays</span></a></li>
                <li class=""><a href="events.jsp"><i class="icon-calendar"></i><span>Events</span></a></li>
                <li class=""><a href="payroll.jsp"><i class="icon-briefcase"></i><span>Payroll</span></a></li>
                <li class=""><a href="accounts.jsp"><i class="icon-credit-card"></i><span>Accounts</span></a></li>
                <li class=""><a href="report.jsp"><i class="icon-bar-chart"></i><span>Report</span></a></li>
                <li class="g_heading">Project</li>
                <li class="">
                    <a href="javascript:void(0)" class="has-arrow arrow-c"><i class="icon-cup"></i><span>Project</span></a>
                    <ul>
                        <li class=""><a href="../project/index2.jsp">Dashboard</a></li>
                        <li class=""><a href="../project/list.jsp">Project list</a></li>
                        <li class=""><a href="../project/taskboard.jsp">Taskboard</a></li>
                        <li class=""><a href="../project/ticket.jsp">Ticket List</a></li>
                        <li class=""><a href="../project/ticketdetails.jsp">Ticket Details</a></li>
                        <li class=""><a href="../project/clients.jsp">Clients</a></li>
                        <li class=""><a href="../project/todo.jsp">Todo List</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:void(0)" class="has-arrow arrow-c"><i class="icon-briefcase"></i><span>Job Portal</span></a>
                    <ul>
                        <li class=""><a href="../job/index3.jsp">Dashboard</a></li>
                        <li class=""><a href="../job/positions.jsp">Positions</a></li>
                        <li class=""><a href="../job/applicants.jsp">Applicants</a></li>
                        <li class=""><a href="../job/resumes.jsp">Resumes</a></li>
                        <li class=""><a href="../job/jobsettings.jsp">Settings</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:void(0)" class="has-arrow arrow-c"><i
                            class="icon-lock"></i><span>Authentication</span></a>
                    <ul>
                        <li class=""><a href="../authentication/login.jsp">Login</a></li>
                        <li class=""><a href="../authentication/register.jsp">Register</a></li>
                        <li class=""><a href="../authentication/forgotpassword.jsp">Forgot password</a></li>
                        <li class=""><a href="../authentication/error404.jsp">Error 404</a></li>
                        <li class=""><a href="../authentication/error500.jsp">Error 500</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <div class="page">
        <div id="page_top" class="section-body">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="left">
                        <h1 class="page-title">Users</h1>
                        <div class="input-icon xs-hide">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                        </div>
                    </div>
                    <div class="right">
                        <ul class="nav nav-pills">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="true" aria-expanded="false">Language</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2"
                                                                           src="../assets/images/flags/us.svg">English</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2"
                                                                           src="../assets/images/flags/es.svg">Spanish</a>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2"
                                                                           src="../assets/images/flags/jp.svg">japanese</a>
                                    <a class="dropdown-item" href="#"><img class="w20 mr-2"
                                                                           src="../assets/images/flags/bl.svg">France</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="true" aria-expanded="false">Reports</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-excel-o"></i>
                                        MS Excel</a>
                                    <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-word-o"></i> MS
                                        Word</a>
                                    <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-pdf-o"></i> PDF</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="true" aria-expanded="false">Project</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Graphics Design</a>
                                    <a class="dropdown-item" href="#">Angular Admin</a>
                                    <a class="dropdown-item" href="#">PSD to HTML</a>
                                    <a class="dropdown-item" href="#">iOs App Development</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Home Development</a>
                                    <a class="dropdown-item" href="#">New Blog post</a>
                                </div>
                            </li>
                        </ul>
                        <div class="notification d-flex">
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1"
                                   data-toggle="dropdown"><i class="fa fa-envelope"></i><span
                                        class="badge badge-success nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="right_chat list-unstyled w250 p-0">
                                        <li class="online">
                                            <a href="javascript:void(0);">
                                                <div class="media">
                                                    <img class="media-object " src="../assets/images/xs/avatar4.jpg"
                                                         alt="">
                                                    <div class="media-body">
                                                        <span class="name">Donald Gardner</span>
                                                        <span class="message">Designer, Blogger</span>
                                                        <span class="badge badge-outline status"></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);">
                                                <div class="media">
                                                    <img class="media-object " src="../assets/images/xs/avatar5.jpg"
                                                         alt="">
                                                    <div class="media-body">
                                                        <span class="name">Wendy Keen</span>
                                                        <span class="message">Java Developer</span>
                                                        <span class="badge badge-outline status"></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="offline">
                                            <a href="javascript:void(0);">
                                                <div class="media">
                                                    <img class="media-object " src="../assets/images/xs/avatar2.jpg"
                                                         alt="">
                                                    <div class="media-body">
                                                        <span class="name">Matt Rosales</span>
                                                        <span class="message">CEO, Epic Theme</span>
                                                        <span class="badge badge-outline status"></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="online">
                                            <a href="javascript:void(0);">
                                                <div class="media">
                                                    <img class="media-object " src="../assets/images/xs/avatar3.jpg"
                                                         alt="">
                                                    <div class="media-body">
                                                        <span class="name">Phillip Smith</span>
                                                        <span class="message">Writter, Mag Editor</span>
                                                        <span class="badge badge-outline status"></span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)"
                                       class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1"
                                   data-toggle="dropdown"><i class="fa fa-bell"></i><span
                                        class="badge badge-primary nav-unread"></span></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <ul class="list-unstyled feeds_widget">
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-check"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title text-danger">Issue Fixed <small
                                                        class="float-right text-muted">11:05</small></h4>
                                                <small>WE have fix all Design bug with Responsive</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-user"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">New User <small
                                                        class="float-right text-muted">10:45</small></h4>
                                                <small>I feel great! Thanks team</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-thumbs-o-up"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">7 New Feedback <small class="float-right text-muted">Today</small>
                                                </h4>
                                                <small>It will give a smart finishing to your site</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-question-circle"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title text-warning">Server Warning <small
                                                        class="float-right text-muted">10:50</small></h4>
                                                <small>Your connection is not private</small>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="feeds-left"><i class="fa fa-shopping-cart"></i></div>
                                            <div class="feeds-body">
                                                <h4 class="title">7 New Orders <small class="float-right text-muted">11:35</small>
                                                </h4>
                                                <small>You received a new oder from Tina.</small>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)"
                                       class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                                </div>
                            </div>
                            <div class="dropdown d-flex">
                                <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1"
                                   data-toggle="dropdown"><i class="fa fa-user"></i></a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    <a class="dropdown-item" href="page-profile.jsp"><i
                                            class="dropdown-icon fe fe-user"></i> Profile</a>
                                    <a class="dropdown-item" href="app-setting.jsp"><i
                                            class="dropdown-icon fe fe-settings"></i> Settings</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><span class="float-right"><span
                                            class="badge badge-primary">6</span></span><i
                                            class="dropdown-icon fe fe-mail"></i> Inbox</a>
                                    <a class="dropdown-item" href="javascript:void(0)"><i
                                            class="dropdown-icon fe fe-send"></i> Message</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript:void(0)"><i
                                            class="dropdown-icon fe fe-help-circle"></i> Need help?</a>
                                    <a class="dropdown-item" href="login.jsp"><i
                                            class="dropdown-icon fe fe-log-out"></i> Sign out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body">
            <div class="container-fluid">
                <div class="d-flex justify-content-between align-items-center">
                    <ul class="nav nav-tabs page-header-tab">
                        <li class="nav-item"><a class="nav-link" id="user-tab" data-toggle="tab" href="#user-add">Add
                            New</a></li>
                    </ul>
                    <div class="header-action">
                        <button type="button" class="btn btn-primary"><i class="fe fe-plus mr-2"></i>Add</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="user-add" role="tabpanel">
                        <div class="card">
                            <form method="post" action="addCandidate">
                                <div class="card-body">
                                    <div class="row clearfix">
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <div class="form-group">
                                                <input type="text" name="name" class="form-control" placeholder="Name *"
                                                       value="${sessionScope.newCandidate.user.name}">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <div class="form-group">
                                                <input type="text" name="surname" class="form-control"
                                                       placeholder="Surname *"
                                                       value="${sessionScope.newCandidate.user.surname}">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-6">
                                            <div class="form-group">
                                                <input type="text" name="email" class="form-control" placeholder="Email"
                                                       value="${sessionScope.newCandidate.user.email}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Mobile No"
                                                       value="${sessionScope.newCandidate.user.mobile}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Phone No"
                                                       value="${sessionScope.newCandidate.user.phone}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Password">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Confirm Password"/>
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Minimum Salary"
                                                       value="${sessionScope.newCandidate.salaryMin}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Maximum Salary"
                                                       value="${sessionScope.newCandidate.salaryMax}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Birth Date"
                                                       value="${sessionScope.newCandidate.birthDate}">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Position"
                                                       value="${sessionScope.newCandidate.position}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <select id="country" class="form-control" data-live-search="true">
                                                    <option value="-1">Select</option>
                                                    <c:forEach items="${countryList}" var="country">
                                                        <option value="${country.id}"
                                                                data-tokens="${country.name}">${country.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <select id="city" class="form-control" data-live-search="true">
                                                    <option value="-1">Select</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Street"
                                                       value="${sessionScope.newCandidate.address.info}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="LinkedIn"
                                                       value="${sessionScope.newCandidate.linkedin}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="GitHub"
                                                       value="${sessionScope.newCandidate.github}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="GitLab"
                                                       value="${sessionScope.newCandidate.gitlab}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Facebook"
                                                       value="${sessionScope.newCandidate.facebook}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Twitter"
                                                       value="${sessionScope.newCandidate.twitter}">
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Instagram"
                                                       value="${sessionScope.newCandidate.instagram}">
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <hr class="mt-4">
                                            <h6>Job History</h6>
                                            <button id="addJobHistory" type="button" class="btn btn-primary"
                                                    data-toggle="modal" data-target="#addJobHistoryModal">
                                                <i class="fe fe-plus mr-2"></i>Add Job History
                                            </button>
                                            <div class="table-responsive">
                                                <table id="jobHistoryList" class="table table-striped">
                                                    <thead>
                                                    <tr>
                                                        <th>Start Date</th>
                                                        <th>End Date</th>
                                                        <th>Company</th>
                                                        <th>Position</th>
                                                        <th>Country</th>
                                                        <th>City</th>
                                                        <th>About</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${sessionScope.newCandidate.jobHistoryList}"
                                                               var="jobHistory">
                                                        <tr>
                                                            <td>${jobHistory.startDate}</td>
                                                            <td>${jobHistory.endDate}</td>
                                                            <td>${jobHistory.company}</td>
                                                            <td>${jobHistory.position}</td>
                                                            <td>${jobHistory.country.name}</td>
                                                            <td>${jobHistory.city.name}</td>
                                                            <td>${jobHistory.info}</td>
                                                            <td>
                                                                <button type="button"
                                                                        id="editJobHistory"
                                                                        data-toggle="modal"
                                                                        job-history-id="${jobHistory.id}"
                                                                        start-date="${jobHistory.startDate}"
                                                                        end-date="${jobHistory.endDate}"
                                                                        company="${jobHistory.company}"
                                                                        position="${jobHistory.position}"
                                                                        country-id="${jobHistory.country.id}"
                                                                        city-id="${jobHistory.city.id}"
                                                                        info="${jobHistory.info}"
                                                                        data-target="#edit-job-history-modal"
                                                                        class="ibtnEdit btn btn-md btn-primary">
                                                                    Edit
                                                                </button>
                                                                <button type="button"
                                                                        onclick="deleteJobHistory(${jobHistory.id})"
                                                                        class="ibtnDel btn btn-md btn-danger">
                                                                    Delete
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                        <div class="col-12">
                                            <div>
                                                <button type="submit" class="btn btn-primary">Add</button>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                    Cancel
                                                </button>
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
        <div class="section-body">
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            Copyright © 2019 <a
                                href="https://themeforest.net/user/puffintheme/portfolio">PuffinTheme</a>.
                        </div>
                        <div class="col-md-6 col-sm-12 text-md-right">
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item"><a href="javascript:void(0)">Documentation</a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)">FAQ</a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)"
                                                                class="btn btn-outline-primary btn-sm">Buy Now</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="addJobHistoryModal" tabindex="-1" role="dialog"
     aria-labelledby="add-job-history-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="add-job-history-modal-label">Add Job History</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="add-start-date" type="text" class="form-control" placeholder="Start Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="add-end-date" type="text" class="form-control" placeholder="End Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="add-company" type="text" class="form-control" placeholder="Company">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="add-position" type="text" class="form-control" placeholder="Position">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <select id="add-job-history-country" class="form-control" data-live-search="true">
                                <option value="-1">Select</option>
                                <c:forEach items="${countryList}" var="country">
                                    <option value="${country.id}"
                                            data-tokens="${country.name}">${country.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <select id="add-job-history-city" class="form-control" data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <textarea id="add-info" class="form-control" aria-label="About"
                                      placeholder="About"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button id="saveJobHistory" type="button" class="btn btn-primary">Add Job History</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="edit-job-history-modal" tabindex="-1" role="dialog"
     aria-labelledby="edit-job-history-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="edit-job-history-modal-label">Edit Job History</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="edit-start-date" name="edit-start-date" value="" type="text" class="form-control"
                                   placeholder="Start Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="edit-end-date" name="edit-end-date" value="" type="text" class="form-control"
                                   placeholder="End Date">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="edit-company" name="edit-company" value="" type="text" class="form-control"
                                   placeholder="Company">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <input id="edit-position" name="edit-position" value="" type="text" class="form-control"
                                   placeholder="Position">
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <select id="edit-job-history-country" class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                                <c:forEach items="${countryList}" var="country">
                                    <option value="${country.id}"
                                            data-tokens="${country.name}">${country.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <select id="edit-job-history-city" class="form-control"
                                    data-live-search="true">
                                <option value="-1">Select</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="form-group">
                            <textarea id="edit-info" name="edit-info" class="form-control" aria-label="About"
                                      placeholder="About"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button id="edit-job-history" type="button" class="btn btn-primary">Save</button>
            </div>
        </div>
    </div>
</div>


<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script src="../assets/bundles/lib.vendor.bundle.js"></script>
<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/dialogs.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(document).ready(function () {

        $(function () {
            $("#add-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#add-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#edit-start-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
        $(function () {
            $("#edit-end-date").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });

        $('#country').selectpicker();
        $('#city').selectpicker();
        $('#add-job-history-country').selectpicker();
        $('#add-job-history-city').selectpicker();
        $('#edit-job-history-country').selectpicker();
        $('#edit-job-history-city').selectpicker();
        $('#country').on('change', function () {
            var countryId = $('#country option:selected').val();
            $.ajax({
                url: 'getCityList',
                data: {
                    "country_id": countryId
                },
                success: function (data) {
                    $('#city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#city').append(o);
                    }
                    $('#city').selectpicker('refresh');
                }
            });
        });
        $('#add-job-history-country').on('change', function () {
            var countryId = $('#add-job-history-country option:selected').val();
            $.ajax({
                url: 'getCityList',
                data: {
                    "country_id": countryId
                },
                success: function (data) {
                    $('#add-job-history-city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#add-job-history-city').append(o);
                    }
                    $('#add-job-history-city').selectpicker('refresh');
                }
            });
        });
        $('#edit-job-history-country').on('change', function () {
            var countryId = $('#edit-job-history-country option:selected').val();
            $.ajax({
                url: 'getCityList',
                data: {
                    "country_id": countryId
                },
                success: function (data) {
                    $('#edit-job-history-city').empty();
                    for (var i = 0; i < data.length; i++) {
                        var o = new Option(data[i].name, data[i].id);
                        $('#edit-job-history-city').append(o);
                    }
                    $('#edit-job-history-city').selectpicker('refresh');
                }
            });
        });

        $('#saveJobHistory').on('click', function () {

            var startDate = $('#add-start-date').val();
            var endDate = $('#add-end-date').val();
            var company = $('#add-company').val();
            var position = $('#add-position').val();

            var country = document.getElementById('add-job-history-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;

            var city = document.getElementById('add-job-history-city');
            var cityId = city.options[city.selectedIndex].value;
            var cityName = city.options[city.selectedIndex].text;

            var about = $('#add-info').val();

            var jobHistory = {
                'company': company,
                'position': position,
                'info': about,
                'startDate': startDate,
                'endDate': endDate,
                'country': {
                    'id': countryId,
                    'name': countryName
                },
                'city': {
                    'id': cityId,
                    'name': cityName,
                    'countryId': countryId
                }
            };

            console.log('startDate = ' + startDate);
            console.log('endDate = ' + endDate);
            console.log('company = ' + company);
            console.log('position = ' + position);
            console.log('country = ' + countryName);
            console.log('city = ' + cityName);
            console.log('about = ' + about);

            var json = JSON.stringify(jobHistory);

            $.ajax({
                method: 'post',
                url: 'addJobHistory',
                contentType: 'application/json',
                data: json,
                async: false,
                success: function () {
                    console.log('added ');
                    $('#addJobHistoryModal').modal('hide');
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });

            var newRow = $("<tr>");
            var cols = "";

            cols += '<td>' + startDate + '</td>';
            cols += '<td>' + endDate + '</td>';
            cols += '<td>' + company + '</td>';
            cols += '<td>' + position + '</td>';
            cols += '<td>' + countryName + '</td>';
            cols += '<td>' + cityName + '</td>';
            cols += '<td>' + about + '</td>';
            cols += '<td>' +
                '<input type="button" class="ibtnEdit btn btn-md btn-primary" value="Edit">&nbsp;' +
                '<input type="button" class="ibtnDel btn btn-md btn-danger" value="Delete">' +
                '</td>';
            newRow.append(cols);
            $("#jobHistoryList").append(newRow);
            $("#jobHistoryList").load(window.location.href + " #jobHistoryList");
        });

        var jobHistoryId;

        $('#edit-job-history-modal').on('show.bs.modal', function (e) {
            var opener = e.relatedTarget;

            jobHistoryId = $(opener).attr('job-history-id');
            var startDate = $(opener).attr('start-date');
            var endDate = $(opener).attr('end-date');
            var company = $(opener).attr('company');
            var position = $(opener).attr('position');
            // var countryId = $(opener).attr('country-id');
            // var cityId = $(opener).attr('city-id');
            var info = $(opener).attr('info');

            $('#edit-job-history-modal').find('[name="edit-start-date"]').val(startDate);
            $('#edit-job-history-modal').find('[name="edit-end-date"]').val(endDate);
            $('#edit-job-history-modal').find('[name="edit-company"]').val(company);
            $('#edit-job-history-modal').find('[name="edit-position"]').val(position);
            // $('#edit-job-history-modal').find('[name="edit-job-history-country"]').val(countryId);
            // $('#edit-job-history-modal').find('[name="edit-job-history-city"]').val(cityId);
            $('#edit-job-history-modal').find('[name="edit-info"]').val(info);
        });

        $('#edit-job-history').on('click', function () {

            var startDate = $('#edit-start-date').val();
            var endDate = $('#edit-end-date').val();
            var company = $('#edit-company').val();
            var position = $('#edit-position').val();

            var country = document.getElementById('edit-job-history-country');
            var countryId = country.options[country.selectedIndex].value;
            var countryName = country.options[country.selectedIndex].text;

            var city = document.getElementById('edit-job-history-city');
            var cityId = city.options[city.selectedIndex].value;
            var cityName = city.options[city.selectedIndex].text;

            var info = $('#edit-info').val();

            var jobHistory = {
                'id': jobHistoryId,
                'startDate': startDate,
                'endDate': endDate,
                'company': company,
                'position': position,
                'country': {
                    'id': countryId,
                    'name': countryName
                },
                'city': {
                    'id': cityId,
                    'name': cityName,
                    'countryId': countryId
                },
                'info': info
            };

            console.log('id = ' + jobHistoryId);
            console.log('startDate = ' + startDate);
            console.log('endDate = ' + endDate);
            console.log('company = ' + company);
            console.log('position = ' + position);
            console.log('country = ' + countryName);
            console.log('city = ' + cityName);
            console.log('info = ' + info);

            var json = JSON.stringify(jobHistory);

            $.ajax({
                url: 'updateJobHistory',
                contentType: 'application/json',
                method: 'post',
                data: json,
                async: false,
                success: function () {
                    console.log('edited ');
                    $('#edit-job-history-modal').modal('hide');
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log('error textStatus = ' + textStatus + ' errorThrown = ' + errorThrown);
                }
            });

            $("#jobHistoryList").load(window.location.href + " #jobHistoryList");
        });
    });

    function deleteJobHistory(id) {
        $.ajax({
            url: "deleteJobHistory",
            method: "post",
            data: {id: id}
        })
        // location.reload();
        $("#jobHistoryList").load(window.location.href + " #jobHistoryList");
    }
</script>

</body>
</html>
