<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard</title>
<jsp:include page="../common/meta.jsp"/>

<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">    
    

<!-- Custom Css -->
<jsp:include page="../common/css.jsp"/>
</head>

<body class="font-montserrat">
    
<!-- Page Loader -->
<jsp:include page="../common/pageLoader.jsp"/>

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
    <jsp:include page="../common/tabcontentsettings.jsp"/>
</div>    <div class="user_div">
    <h5 class="brand-name mb-4">Admin Panel<a href="javascript:void(0)" class="user_btn"><i class="icon-logout"></i></a></h5>
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
    <h5 class="brand-name">Admin Panel <a href="javascript:void(0)" class="menu_option float-right"><i class="icon-grid font-16" data-toggle="tooltip" data-placement="left" title="Grid & List Toggle"></i></a></h5>
    <nav id="left-sidebar-nav" class="sidebar-nav">
        <ul class="metismenu">
            <jsp:include page="../common/metismenu.jsp"/>
        </ul>
    </nav>
</div>
    <div class="page">
        <div id="page_top" class="section-body">
    <div class="container-fluid">
        <div class="page-header">
            <div class="left">
                <h1 class="page-title">Dashboard</h1>
                <div class="input-icon xs-hide">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                </div>
            </div>
            <jsp:include page="../common/headerrightmenu.jsp"/>
        </div>
    </div>
</div>
            <div class="section-body mt-3">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="mb-4">
                        <h4>Welcome Admin</h4>
                        <small>Measure How Fast You’re Growing Monthly Recurring Revenue. <a href="#">Learn More</a></small>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body ribbon">
                            <div class="ribbon-box green">6</div>
                            <a href="employee.jsp" class="my_sort_cut text-muted">
                                <i class="icon-users"></i>
                                <span>Candidates</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body">
                            <a href="departments.jsp" class="my_sort_cut text-muted">
                                <i class="icon-bag"></i>
                                <span>Companies</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body ribbon">
                            <div class="ribbon-box orange">8</div>
                            <a href="events.jsp" class="my_sort_cut text-muted">
                                <i class="icon-calendar"></i>
                                <span>Events</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body">
                            <a href="payroll.jsp" class="my_sort_cut text-muted">
                                <i class="icon-credit-card"></i>
                                <span>Payroll</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body">
                            <a href="accounts.jsp" class="my_sort_cut text-muted">
                                <i class="icon-calculator"></i>
                                <span>Accounts</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-xl-2">
                    <div class="card">
                        <div class="card-body">
                            <a href="report.jsp" class="my_sort_cut text-muted">
                                <i class="icon-pie-chart"></i>
                                <span>Report</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section-body">
        <div class="container-fluid">
            <div class="row clearfix row-deck">
                <div class="col-xl-6 col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Salary Statistics</h3>
                            <div class="card-options">
                                <label class="custom-switch m-0">
                                    <input type="checkbox" value="1" class="custom-switch-input" checked="">
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </div>
                        </div>
                        <div class="card-body">
                            <div id="apex-basic-column"></div>
                        </div>
                        <div class="card-footer">
                            <div class="d-flex justify-content-between align-items-center">
                                <a href="javascript:void(0)" class="btn btn-info btn-sm w200 mr-3">Generate Report</a>
                                <small>Measure How Fast You’re Growing Monthly Recurring Revenue. <a href="#">Learn More</a></small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Revenue</h3>
                        </div>
                        <div class="card-body text-center">
                            <div class="mt-4">
                                <input type="text" class="knob" value="82" data-width="147" data-height="147" data-thickness="0.07" data-bgColor="#3f454a" data-fgColor="#E21E32">
                            </div>
                            <h3 class="mb-0 mt-3 font300"><span class="counter">1,24,301</span> <span class="text-green font-15">+3.7%</span></h3>
                            <small>Lorem Ipsum is simply dummy text <br> <a href="#">Read more</a> </small>
                            <div class="mt-4">
                                <span class="chart_3">2,5,8,3,6,9,4,5,6,3</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="javascript:void(0)" class="btn btn-block btn-success btn-sm">Send Report</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">My Balance</h3>
                        </div>
                        <div class="card-body">
                            <span>Balance</span>
                            <h4>$<span class="counter">20,508</span></h4>
                            <div id="apexspark1" class="mb-4"></div>
                            <div class="form-group">
                                <label class="d-block">Bank of America <span class="float-right">$<span class="counter">15,025</span></span></label>
                                <div class="progress progress-xs">
                                    <div class="progress-bar bg-azure" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="d-block">RBC Bank <span class="float-right">$<span class="counter">1,843</span></span></label>
                                <div class="progress progress-xs">
                                    <div class="progress-bar bg-green" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="d-block">Frost Bank <span class="float-right">$<span class="counter">3,641</span></span></label>
                                <div class="progress progress-xs">
                                    <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="javascript:void(0)" class="btn btn-block btn-info btn-sm">View More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix row-deck">
                <div class="col-xl-4 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Employee Structure</h3>
                        </div>
                        <div class="card-body text-center">
                            <div id="apex-basic-bar" style="height: 220px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Employee Satisfaction</h3>
                        </div>
                        <div class="card-body text-center">
                            <div id="apex-radar-multiple-series" style="height: 220px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Performance</h3>
                        </div>
                        <div class="card-body">
                            <span>Measure How Fast You’re Growing Monthly Recurring Revenue. <a href="#">Learn More</a></span>
                            <ul class="list-group mt-3 mb-0">
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <div class="float-left"><strong>35%</strong></div>
                                        <div class="float-right"><small class="text-muted">Design Team</small></div>
                                    </div>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-azure" role="progressbar" style="width: 35%" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <div class="float-left"><strong>25%</strong></div>
                                        <div class="float-right"><small class="text-muted">Developer Team</small></div>
                                    </div>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-green" role="progressbar" style="width: 25%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <div class="float-left"><strong>15%</strong></div>
                                        <div class="float-right"><small class="text-muted">Marketing</small></div>
                                    </div>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-orange" role="progressbar" style="width: 15%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <div class="float-left"><strong>20%</strong></div>
                                        <div class="float-right"><small class="text-muted">Management</small></div>
                                    </div>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-indigo" role="progressbar" style="width: 20%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="clearfix">
                                        <div class="float-left"><strong>11%</strong></div>
                                        <div class="float-right"><small class="text-muted">Other</small></div>
                                    </div>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-pink" role="progressbar" style="width: 11%" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Project Summary</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-striped text-nowrap table-vcenter mb-0">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Client Name</th>
                                            <th>Team</th>
                                            <th>Project</th>
                                            <th>Project Cost</th>
                                            <th>Payment</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>#AD1245</td>
                                            <td>Sean Black</td>
                                            <td>
                                                <ul class="list-unstyled team-info sm margin-0 w150">
                                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                                    <li class="ml-2"><span>2+</span></li>
                                                </ul>
                                            </td>
                                            <td>Angular Admin</td>
                                            <td>$14,500</td>
                                            <td>Done</td>
                                            <td><span class="tag tag-success">Delivered</span></td>
                                        </tr>
                                        <tr>
                                            <td>#DF1937</td>
                                            <td>Sean Black</td>
                                            <td>
                                                <ul class="list-unstyled team-info sm margin-0 w150">
                                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                                    <li class="ml-2"><span>2+</span></li>
                                                </ul>
                                            </td>
                                            <td>Angular Admin</td>
                                            <td>$14,500</td>
                                            <td>Pending</td>
                                            <td><span class="tag tag-success">Delivered</span></td>
                                        </tr>
                                        <tr>
                                            <td>#YU8585</td>
                                            <td>Merri Diamond</td>
                                            <td>
                                                <ul class="list-unstyled team-info sm margin-0 w150">
                                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                </ul>
                                            </td>
                                            <td>One page html Admin</td>
                                            <td>$500</td>
                                            <td>Done</td>
                                            <td><span class="tag tag-orange">Submit</span></td>
                                        </tr>
                                        <tr>
                                            <td>#AD1245</td>
                                            <td>Sean Black</td>
                                            <td>
                                                <ul class="list-unstyled team-info sm margin-0 w150">
                                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                                </ul>
                                            </td>
                                            <td>Wordpress One page</td>
                                            <td>$1,500</td>
                                            <td>Done</td>
                                            <td><span class="tag tag-success">Delivered</span></td>
                                        </tr>
                                        <tr>
                                            <td>#GH8596</td>
                                            <td>Allen Collins</td>
                                            <td>
                                                <ul class="list-unstyled team-info sm margin-0 w150">
                                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                                    <li class="ml-2"><span>2+</span></li>
                                                </ul>
                                            </td>
                                            <td>VueJs Application</td>
                                            <td>$9,500</td>
                                            <td>Done</td>
                                            <td><span class="tag tag-success">Delivered</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="section-body">
    <jsp:include page="../common/footer.jsp"/>
</div>    </div>
</div>



<!-- Scripts -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>


<script src="../assets/bundles/apexcharts.bundle.js"></script>
<script src="../assets/bundles/counterup.bundle.js"></script>
<script src="../assets/bundles/knobjs.bundle.js"></script>

<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/index.js"></script>

</body>

</html>
