<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/project/ticketdetails by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:18:20 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta name="csrf-token" content="uogU0NLGkPSmzjE9jSDDXdbL7VZZSWhwfcykYUO7">
<link rel="icon" href="../assets/images/favicon.html" type="image/x-icon"> <!-- Favicon-->
<title>Ticket Detail - Laravel</title>
<meta name="description" content="Laravel">
<meta name="author" content="Laravel">

<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">    
    
<link rel="stylesheet" href="../assets/plugins/summernote/dist/summernote.css">
    

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
            <a class="header-brand" href="../hrms/index.jsp"><i class="fe fe-command brand-logo"></i></a>
            <div class="dropdown">
                <a href="../pages/search.jsp" class="nav-link icon"><i class="fa fa-search"></i></a>
                <a href="../pages/calendar.jsp" class="nav-link icon app_inbox"><i class="fa fa-calendar"></i></a>
                <a href="../pages/contact.jsp" class="nav-link icon xs-hide"><i class="fa fa-id-card-o"></i></a>
                <a href="../chatapp/chat.jsp" class="nav-link icon xs-hide"><i class="fa fa-comments-o"></i></a>
                <a href="../pages/filemanager.jsp" class="nav-link icon app_file xs-hide"><i class="fa fa-folder-o"></i></a>
            </div>
        </div>
        <div class="hright">
            <div class="dropdown">
                <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fa fa-gear fa-spin" data-toggle="tooltip" data-placement="right" title="Settings"></i></a>
                <a href="javascript:void(0)" class="nav-link user_btn"><img class="avatar" src="../assets/images/user.png" alt="" data-toggle="tooltip" data-placement="right" title="User Menu"/></a>
                <a href="javascript:void(0)" class="nav-link icon menu_toggle"><i class="fa  fa-align-left"></i></a>
            </div>
        </div>
    </div>
</div>    <div id="rightsidebar" class="right_sidebar">
    <a href="javascript:void(0)" class="p-3 settingbar float-right"><i class="fa fa-close"></i></a>
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Settings" aria-expanded="true">Settings</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#activity" aria-expanded="false">Activity</a></li>
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
                        <input type="radio" class="custom-control-input" name="font" value="font-montserrat" checked="">
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
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-darkmode">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Fix Navbar top</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-fixnavbar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Header Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-pageheader">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Min Sidebar Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-min_sidebar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Sidebar Dark</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-sidebar">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Icon Color</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-iconcolor">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Gradient Color</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-gradient">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Box Shadow</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxshadow">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">RTL Support</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-rtl">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                    <li>
                        <label class="custom-switch">
                            <span class="custom-switch-description">Box Layout</span>
                            <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input btn-boxlayout">
                            <span class="custom-switch-indicator"></span>
                        </label>
                    </li>
                </ul>
            </div>
            <hr>
            <div class="form-group">
                <label class="d-block">Storage <span class="float-right">77%</span></label>
                <div class="progress progress-sm">
                    <div class="progress-bar" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;"></div>
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
</div>    <div class="user_div">
    <h5 class="brand-name mb-4">Epic HR<a href="javascript:void(0)" class="user_btn"><i class="icon-logout"></i></a></h5>
    <div class="card">
        <div class="card-body">
            <div class="media">
                <img class="avatar avatar-xl mr-3" src="../assets/images/sm/avatar1.jpg" alt="avatar">
                <div class="media-body">
                    <h5 class="m-0">Sara Hopkins</h5>
                    <p class="text-muted mb-0">Webdeveloper</p>
                    <ul class="social-links list-inline mb-0 mt-2">
                        <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip" data-original-title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip" data-original-title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip" data-original-title="1234567890"><i class="fa fa-phone"></i></a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" title="" data-toggle="tooltip" data-original-title="@skypename"><i class="fa fa-skype"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Statistics</h3>
            <div class="card-options">
                <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>                                
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
                    <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;"></div>
                </div>
            </div>
            <div class="form-group">
                <label class="d-block">Total Expenses <span class="float-right">50%</span></label>
                <div class="progress progress-xs">
                    <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
                </div>
            </div>
            <div class="form-group mb-0">
                <label class="d-block">Gross Profit <span class="float-right">23%</span></label>
                <div class="progress progress-xs">
                    <div class="progress-bar bg-green" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="card b-none">
        <ul class="list-group">
            <li class="list-group-item d-flex">
                <div class="box-icon sm rounded bg-blue"><i class="fa fa-credit-card"></i> </div>
                <div class="ml-3">
                    <div>+$29 New sale</div>
                    <a href="javascript:void(0)">Admin Template</a>
                    <div class="text-muted font-12">5 min ago</div>
                </div>
            </li>
            <li class="list-group-item d-flex">
                <div class="box-icon sm rounded bg-pink"><i class="fa fa-upload"></i> </div>
                <div class="ml-3">
                    <div>Project Update</div>
                    <a href="javascript:void(0)">New HTML page</a>
                    <div class="text-muted font-12">10 min ago</div>
                </div>
            </li>
            <li class="list-group-item d-flex">
                <div class="box-icon sm rounded bg-teal"><i class="fa fa-file-word-o"></i> </div>
                <div class="ml-3">
                    <div>You edited the file</div>
                    <a href="javascript:void(0)">reposrt.doc</a>
                    <div class="text-muted font-12">11 min ago</div>
                </div>
            </li>
            <li class="list-group-item d-flex">
                <div class="box-icon sm rounded bg-cyan"><i class="fa fa-user"></i> </div>
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
    <h5 class="brand-name">Epic HR <a href="javascript:void(0)" class="menu_option float-right"><i class="icon-grid font-16" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
    <nav id="left-sidebar-nav" class="sidebar-nav">
        <ul class="metismenu">
            <li class="g_heading">Hr</li>
            <li class=""><a href="../hrms/index.jsp"><i class="icon-speedometer"></i><span>Dashboard</span></a></li>
            <li class=""><a href="../hrms/users.jsp"><i class="icon-users"></i><span>Users</span></a></li>
            <li class=""><a href="../hrms/departments.jsp"><i class="icon-control-pause"></i><span>Departments</span></a></li>
            <li class=""><a href="../hrms/employee.jsp"><i class="icon-user"></i><span>Employee</span></a></li>
            <li class=""><a href="../hrms/activities.jsp"><i class="icon-equalizer"></i><span>Activities</span></a></li>
            <li class=""><a href="../hrms/holidays.jsp"><i class="icon-like"></i><span>Holidays</span></a></li>
            <li class=""><a href="../hrms/events.jsp"><i class="icon-calendar"></i><span>Events</span></a></li>
            <li class=""><a href="../hrms/payroll.jsp"><i class="icon-briefcase"></i><span>Payroll</span></a></li>
            <li class=""><a href="../hrms/accounts.jsp"><i class="icon-credit-card"></i><span>Accounts</span></a></li>
            <li class=""><a href="../hrms/report.jsp"><i class="icon-bar-chart"></i><span>Report</span></a></li>
            <li class="g_heading">Project</li>
            <li class="active">
                <a href="javascript:void(0)" class="has-arrow arrow-c"><i class="icon-cup"></i><span>Project</span></a>
                <ul>
                    <li class=""><a href="index2.jsp">Dashboard</a></li>
                    <li class=""><a href="list.jsp">Project list</a></li>
                    <li class=""><a href="taskboard.jsp">Taskboard</a></li>
                    <li class=""><a href="ticket.jsp">Ticket List</a></li>
                    <li class="active"><a href="ticketdetails.jsp">Ticket Details</a></li>
                    <li class=""><a href="clients.jsp">Clients</a></li>
                    <li class=""><a href="todo.jsp">Todo List</a></li>
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
                <a href="javascript:void(0)" class="has-arrow arrow-c"><i class="icon-lock"></i><span>Authentication</span></a>
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
                <h1 class="page-title">Ticket Detail</h1>
                <div class="input-icon xs-hide">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                </div>      
            </div>
            <div class="right">
                <ul class="nav nav-pills">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Language</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#"><img class="w20 mr-2" src="../assets/images/flags/us.svg">English</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#"><img class="w20 mr-2" src="../assets/images/flags/es.svg">Spanish</a>
                            <a class="dropdown-item" href="#"><img class="w20 mr-2" src="../assets/images/flags/jp.svg">japanese</a>
                            <a class="dropdown-item" href="#"><img class="w20 mr-2" src="../assets/images/flags/bl.svg">France</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Reports</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-excel-o"></i> MS Excel</a>
                            <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-word-o"></i> MS Word</a>
                            <a class="dropdown-item" href="#"><i class="dropdown-icon fa fa-file-pdf-o"></i> PDF</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Project</a>
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
                        <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge badge-success nav-unread"></span></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                            <ul class="right_chat list-unstyled w250 p-0">
                                <li class="online">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="../assets/images/xs/avatar4.jpg" alt="">
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
                                            <img class="media-object " src="../assets/images/xs/avatar5.jpg" alt="">
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
                                            <img class="media-object " src="../assets/images/xs/avatar2.jpg" alt="">
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
                                            <img class="media-object " src="../assets/images/xs/avatar3.jpg" alt="">
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
                            <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                        </div>
                    </div>
                    <div class="dropdown d-flex">
                        <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1" data-toggle="dropdown"><i class="fa fa-bell"></i><span class="badge badge-primary nav-unread"></span></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                            <ul class="list-unstyled feeds_widget">
                                <li>
                                    <div class="feeds-left"><i class="fa fa-check"></i></div>
                                    <div class="feeds-body">
                                        <h4 class="title text-danger">Issue Fixed <small class="float-right text-muted">11:05</small></h4>
                                        <small>WE have fix all Design bug with Responsive</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="feeds-left"><i class="fa fa-user"></i></div>
                                    <div class="feeds-body">
                                        <h4 class="title">New User <small class="float-right text-muted">10:45</small></h4>
                                        <small>I feel great! Thanks team</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="feeds-left"><i class="fa fa-thumbs-o-up"></i></div>
                                    <div class="feeds-body">
                                        <h4 class="title">7 New Feedback <small class="float-right text-muted">Today</small></h4>
                                        <small>It will give a smart finishing to your site</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="feeds-left"><i class="fa fa-question-circle"></i></div>
                                    <div class="feeds-body">
                                        <h4 class="title text-warning">Server Warning <small class="float-right text-muted">10:50</small></h4>
                                        <small>Your connection is not private</small>
                                    </div>
                                </li>
                                <li>
                                    <div class="feeds-left"><i class="fa fa-shopping-cart"></i></div>
                                    <div class="feeds-body">
                                        <h4 class="title">7 New Orders <small class="float-right text-muted">11:35</small></h4>
                                        <small>You received a new oder from Tina.</small>
                                    </div>
                                </li>                                   
                            </ul>
                            <div class="dropdown-divider"></div>
                            <a href="javascript:void(0)" class="dropdown-item text-center text-muted-dark readall">Mark all as read</a>
                        </div>
                    </div>
                    <div class="dropdown d-flex">
                        <a class="nav-link icon d-none d-md-flex btn btn-default btn-icon ml-1" data-toggle="dropdown"><i class="fa fa-user"></i></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                            <a class="dropdown-item" href="page-profile.jsp"><i class="dropdown-icon fe fe-user"></i> Profile</a>
                            <a class="dropdown-item" href="app-setting.jsp"><i class="dropdown-icon fe fe-settings"></i> Settings</a>
                            <a class="dropdown-item" href="javascript:void(0)"><span class="float-right"><span class="badge badge-primary">6</span></span><i class="dropdown-icon fe fe-mail"></i> Inbox</a>
                            <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-send"></i> Message</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javascript:void(0)"><i class="dropdown-icon fe fe-help-circle"></i> Need help?</a>
                            <a class="dropdown-item" href="login.jsp"><i class="dropdown-icon fe fe-log-out"></i> Sign out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <div class="section-body mt-3">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-4 col-md-12">
                <div class="card c_grid c_yellow">
                    <div class="card-body text-center">
                        <div class="circle">
                            <img class="rounded-circle" src="../assets/images/sm/avatar1.jpg" alt="">
                        </div>
                        <h6 class="mt-3 mb-0">Michelle Green</h6>
                        <span>jason-porter@info.com</span>
                        <ul class="mt-3 list-unstyled d-flex justify-content-center">
                            <li><a class="p-3" target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="p-3" target="_blank" href="#"><i class="fa fa-slack"></i></a></li>
                            <li><a class="p-3" target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                        <button class="btn btn-default btn-sm">Follow</button>
                        <button class="btn btn-default btn-sm">Message</button>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ticket Details</h3>
                        <div class="card-options">
                            <a href="javascript:void(0)" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                            <div class="item-action dropdown ml-2">
                                <a href="javascript:void(0)" data-toggle="dropdown"><i class="fe fe-more-vertical"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-eye"></i> View Details </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-share-alt"></i> Share </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-cloud-download"></i> Download</a>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-copy"></i> Copy to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-folder"></i> Move to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-edit"></i> Rename</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-trash"></i> Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia</span>
                    </div>                        
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ticket Info</h3>
                        <div class="card-options">
                            <a href="javascript:void(0)" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                            <div class="item-action dropdown ml-2">
                                <a href="javascript:void(0)" data-toggle="dropdown"><i class="fe fe-more-vertical"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-eye"></i> View Details </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-share-alt"></i> Share </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-cloud-download"></i> Download</a>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-copy"></i> Copy to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-folder"></i> Move to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-edit"></i> Rename</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-trash"></i> Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <small class="text-muted">Title: </small>
                                <p class="mb-0">Oculux Admin Template</p>
                            </li>
                            <li class="list-group-item">
                                <small class="text-muted">Department: </small>
                                <p  class="mb-0">Pre-Sales</p>
                            </li>
                            <li class="list-group-item">
                                    <small class="text-muted">Product: </small>
                                    <p  class="mb-0">Oculux Side Menu Open OnClick</p>
                                </li>
                            <li class="list-group-item">
                                <small class="text-muted">Date: </small>
                                <p  class="mb-0">07 Feb 2019</p>
                            </li>
                            <li class="list-group-item">
                                <div>In Progress</div>
                                <div class="progress progress-xs mb-0">
                                    <div class="progress-bar bg-info" style="width: 58%"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="summernote">
                            Hi there,
                            <br/>
                            <p>The toolbar can be customized and it also supports various callbacks such as <code>oninit</code>, <code>onfocus</code>, <code>onpaste</code> and many more.</p>
                            <br/>
                            <p>Thank you!</p>
                            <h6>Summer Note</h6>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Ticket Replies</h3>
                        <div class="card-options">
                            <a href="javascript:void(0)" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                            <div class="item-action dropdown ml-2">
                                <a href="javascript:void(0)" data-toggle="dropdown"><i class="fe fe-more-vertical"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-eye"></i> View Details </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-share-alt"></i> Share </a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-cloud-download"></i> Download</a>
                                    <div class="dropdown-divider"></div>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-copy"></i> Copy to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-folder"></i> Move to</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-edit"></i> Rename</a>
                                    <a href="javascript:void(0)" class="dropdown-item"><i class="dropdown-icon fa fa-trash"></i> Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="timeline_item ">
                            <img class="tl_avatar" src="../assets/images/xs/avatar1.jpg" alt="">
                            <span><a href="javascript:void(0);">Elisse Joson</a> San Francisco, CA <small class="float-right text-right">20-April-2019 - Today</small></span>
                            <h6 class="font600">Hello, 'Im a single div responsive timeline without media Queries!</h6>
                            <div class="msg">
                                <p>I'm speaking with myself, number one, because I have a very good brain and I've said a lot of things. I write the best placeholder text, and I'm the biggest developer on the web card she has is the Lorem card.</p>
                                <a href="javascript:void(0);" class="mr-20 text-muted"><i class="fa fa-heart text-pink"></i> 12 Love</a>
                                <a class="text-muted" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-comments"></i> 1 Comment</a>
                                <div class="collapse p-4 section-gray mt-2" id="collapseExample">
                                    <form class="well">
                                        <div class="form-group">
                                            <textarea rows="2" class="form-control no-resize" placeholder="Enter here for tweet..."></textarea>
                                        </div>
                                        <button class="btn btn-primary">Submit</button>
                                    </form>
                                    <ul class="recent_comments list-unstyled mt-4 mb-0">
                                        <li>
                                            <div class="avatar_img">
                                                <img class="rounded img-fluid" src="../assets/images/xs/avatar4.jpg" alt="">
                                            </div>
                                            <div class="comment_body">
                                                <h6>Donald Gardner <small class="float-right font-14">Just now</small></h6>
                                                <p>Lorem ipsum Veniam aliquip culpa laboris minim tempor</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>                                
                        </div>
                        <div class="timeline_item ">
                            <img class="tl_avatar" src="../assets/images/xs/avatar4.jpg" alt="">
                            <span><a href="javascript:void(0);" title="">Dessie Parks</a> Oakland, CA <small class="float-right text-right">19-April-2019 - Yesterday</small></span>
                            <h6 class="font600">Oeehhh, that's awesome.. Me too!</h6>
                            <div class="msg">
                                <p>I'm speaking with myself, number one, because I have a very good brain and I've said a lot of things. on the web by far... While that's mock-ups and this is politics, are they really so different? I think the only card she has is the Lorem card.</p>
                                <div class="timeline_img mb-20">
                                    <img class="width100" src="../assets/images/gallery/1.jpg" alt="Awesome Image">
                                    <img class="width100" src="../assets/images/gallery/2.jpg" alt="Awesome Image">
                                </div>
                                <a href="javascript:void(0);" class="mr-20 text-muted"><i class="fa fa-heart text-pink"></i> 23 Love</a>
                                <a class="text-muted" role="button" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1"><i class="fa fa-comments"></i> 2 Comment</a>
                                <div class="collapse p-4 section-gray mt-2" id="collapseExample1">
                                    <form class="well">
                                        <div class="form-group">
                                            <textarea rows="2" class="form-control no-resize" placeholder="Enter here for tweet..."></textarea>
                                        </div>
                                        <button class="btn btn-primary">Submit</button>
                                    </form>
                                    <ul class="recent_comments list-unstyled mt-4 mb-0">
                                        <li>
                                            <div class="avatar_img">
                                                <img class="rounded img-fluid" src="../assets/images/xs/avatar4.jpg" alt="">
                                            </div>
                                            <div class="comment_body">
                                                <h6>Donald Gardner <small class="float-right font-14">Just now</small></h6>
                                                <p>Lorem ipsum Veniam aliquip culpa laboris minim tempor</p>
                                                <div class="timeline_img mb-20">
                                                    <img class="width150" src="../assets/images/gallery/7.jpg" alt="Awesome Image">
                                                    <img class="width150" src="../assets/images/gallery/8.jpg" alt="Awesome Image">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="avatar_img">
                                                <img class="rounded img-fluid" src="../assets/images/xs/avatar3.jpg" alt="">
                                            </div>
                                            <div class="comment_body">
                                                <h5>Dessie Parks <small class="float-right font-14">1min ago</small></h5>
                                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>                                    
                            </div>
                        </div>
                        <div class="timeline_item ">
                            <img class="tl_avatar" src="../assets/images/xs/avatar7.jpg" alt="">
                            <span><a href="javascript:void(0);" title="">Rochelle Barton</a> San Francisco, CA <small class="float-right text-right">12-April-2019</small></span>
                            <h6 class="font600">An Engineer Explains Why You Should Always Order the Larger Pizza</h6>
                            <div class="msg">
                                <p>I'm speaking with myself, number one, because I have a very good brain and I've said a lot of things. I write the best placeholder text, and I'm the biggest developer on the web by far... While that's mock-ups and this is politics, is the Lorem card.</p>
                                <a href="javascript:void(0);" class="mr-20 text-muted"><i class="fa fa-heart text-pink"></i> 7 Love</a>
                                <a class="text-muted" role="button" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2"><i class="fa fa-comments"></i> 1 Comment</a>
                                <div class="collapse p-4 section-gray mt-2" id="collapseExample2">
                                    <form class="well">
                                        <div class="form-group">
                                            <textarea rows="2" class="form-control no-resize" placeholder="Enter here for tweet..."></textarea>
                                        </div>
                                        <button class="btn btn-primary">Submit</button>
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

        <div class="section-body">
    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    Copyright © 2019 <a href="https://themeforest.net/user/puffintheme/portfolio">PuffinTheme</a>.
                </div>
                <div class="col-md-6 col-sm-12 text-md-right">
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item"><a href="javascript:void(0)">Documentation</a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)">FAQ</a></li>
                        <li class="list-inline-item"><a href="javascript:void(0)" class="btn btn-outline-primary btn-sm">Buy Now</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>    </div>        
</div>




<!-- Scripts -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>


<script src="../assets/bundles/summernote.bundle.js"></script>
<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/summernote.js"></script>

</body>

<!-- Mirrored from puffintheme.com/demo/epic/hr/laravel/public/project/ticketdetails by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 12 Oct 2019 15:18:20 GMT -->
</html>
