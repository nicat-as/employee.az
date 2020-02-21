<!DOCTYPE html>
<html lang="en">

<head>
    <title>Payroll</title>
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
            <jsp:include page="../common/metismenu.jsp"/>
        </ul>
    </nav>        
</div>
    <div class="page">
        <div id="page_top" class="section-body">
    <div class="container-fluid">
        <div class="page-header">
            <div class="left">
                <h1 class="page-title">Payroll</h1>
                <div class="input-icon xs-hide">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-icon-addon"><i class="fe fe-search"></i></span>
                </div>      
            </div>
            <jsp:include page="../common/headerrightmenu.jsp"/>
        </div>
    </div>
</div>
        <div class="section-body">
    <div class="container-fluid">
        <div class="d-flex justify-content-between align-items-center">
            <ul class="nav nav-tabs page-header-tab">
                <li class="nav-item"><a class="nav-link active" id="Payroll-tab" data-toggle="tab" href="#Payroll-Salary">Employee Salary</a></li>
                <li class="nav-item"><a class="nav-link" id="Payroll-tab" data-toggle="tab" href="#Payroll-Payslip">Payslip</a></li>
            </ul>
            <div class="header-action">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fe fe-plus mr-2"></i>Add</button>
            </div>
        </div>
    </div>
</div>
<div class="section-body mt-3">
    <div class="container-fluid">
        <div class="tab-content mt-3">
            <div class="tab-pane fade show active" id="Payroll-Salary" role="tabpanel">
                <div class="row clearfix">
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                            <h6>Web Developer</h6>
                            <h3 class="pt-3">$<span class="counter">18,960</span></h3>
                            <span><span class="text-danger mr-2"><i class="fa fa-long-arrow-down"></i> 5.27%</span> Since last month</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                            <h6>App Developer</h6>
                            <h3 class="pt-3">$<span class="counter">11,783</span></h3>
                            <span><span class="text-success mr-2"><i class="fa fa-long-arrow-up"></i> 11.38%</span> Since last month</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                            <h6>Designer</h6>
                            <h3 class="pt-3">$<span class="counter">2,254</span></h3>
                            <span><span class="text-success mr-2"><i class="fa fa-long-arrow-up"></i> 9.61%</span> Since last month</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                            <h6>Marketing</h6>
                            <h3 class="pt-3">$<span class="counter">8,751</span></h3>
                            <span><span class="text-danger mr-2"><i class="fa fa-long-arrow-down"></i> 2.27%</span> Since last month</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Employee</h3>
                        <div class="card-options">
                            <form>
                                <div class="input-group">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search something..." name="s">
                                    <span class="input-group-btn ml-2"><button class="btn btn-icon" type="submit"><span class="fe fe-search"></span></button></span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-striped table-vcenter text-nowrap">
                                <thead>
                                    <tr> 
                                        <th style="width: 20px;">#</th>
                                        <th>Employee</th>
                                        <th class="w200">Role</th>
                                        <th class="w60">Salary</th>
                                        <th class="w60">Status</th>
                                        <th class="w200">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span>01</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="avatar avatar-pink" data-toggle="tooltip" data-placement="top" title="Avatar Name">WH</span>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">South Shyanne</a>
                                                    <p class="mb-0">south.shyanne@example.com</p>
                                                </div>
                                            </div>                                        
                                        </td>
                                        <td>Web Developer</td>
                                        <td>$1200</td>
                                        <td><span class="tag tag-success ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>02</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar1.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Zoe Baker</a>
                                                    <p class="mb-0">zoe.baker@example.com</p>
                                                </div>
                                            </div>                                        
                                        </td>
                                        <td>Graphics Desgber</td>
                                        <td>$378</td>
                                        <td><span class="tag tag-success ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>03</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="avatar avatar-blue" data-toggle="tooltip" data-placement="top" title="Avatar Name">WH</span>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Colin Brown</a>
                                                    <p class="mb-0">colinbrown@example.com</p>
                                                </div>
                                            </div>                                        
                                        </td>
                                        <td>HTML Developer</td>
                                        <td>$653</td>
                                        <td><span class="tag tag-success ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>04</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="avatar avatar-green" data-toggle="tooltip" data-placement="top" title="Avatar Name">WH</span>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Kevin Gill</a>
                                                    <p class="mb-0">kevin.gill@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Mobile</td>
                                        <td>$451</td>
                                        <td><span class="tag tag-warning  ml-0 mr-0">Panding</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>05</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar2.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Brandon Smith</a>
                                                    <p class="mb-0">Maria.gill@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>VueJs FrontEnd</td>
                                        <td>$1,989</td>
                                        <td><span class="tag tag-success  ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>06</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar3.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Kevin Baker</a>
                                                    <p class="mb-0">kevin.baker@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Java Developer</td>
                                        <td>$343</td>
                                        <td><span class="tag tag-warning  ml-0 mr-0">Panding</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>07</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar4.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Colin Brown</a>
                                                    <p class="mb-0">colin-brown@example.com</p>
                                                </div>
                                            </div>                                        
                                        </td>
                                        <td>Designer</td>
                                        <td>$653</td>
                                        <td><span class="tag tag-success ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>08</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar5.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Kevin Gill</a>
                                                    <p class="mb-0">kevin-gill@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Team Leader</td>
                                        <td>$451</td>
                                        <td><span class="tag tag-warning  ml-0 mr-0">Panding</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>09</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <span class="avatar avatar-green" data-toggle="tooltip" data-placement="top" title="Avatar Name">WH</span>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Kevin Gill</a>
                                                    <p class="mb-0">kevin.gill@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>Mobile</td>
                                        <td>$451</td>
                                        <td><span class="tag tag-warning  ml-0 mr-0">Panding</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span>10</span>
                                        </td>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <img class="avatar" src="../assets/images/xs/avatar7.jpg" data-toggle="tooltip" data-placement="top" title="Avatar Name" alt="Avatar"/>
                                                <div class="ml-3">
                                                    <a href="javascript:void(0);" title="">Brandon Smith</a>
                                                    <p class="mb-0">Maria.gill@example.com</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>VueJs FrontEnd</td>
                                        <td>$1,989</td>
                                        <td><span class="tag tag-success  ml-0 mr-0">Done</span></td>
                                        <td>
                                            <button type="button" class="btn btn-icon" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon " title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                                    
                        </div>
                        <nav aria-label="Page navigation">
                            <ul class="pagination mb-0 justify-content-end">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="Payroll-Payslip" role="tabpanel">
                <div class="card">
                    <div class="card-body">
                        <div class="media mb-4">
                            <div class="mr-3">
                                <img class="rounded" src="../assets/images/xs/avatar4.jpg" alt="">
                            </div>
                            <div class="media-body">
                                <div class="content">
                                    <span><strong>Order ID: </strong> C09</span>
                                    <p class="h5">John Smith <small class="float-right badge badge-primary">Jun 15, 2019</small></p>
                                    <p>795 Folsom Ave, Suite 546 San Francisco, CA 54656</p>
                                </div>
                                <nav class="d-flex text-muted">
                                    <a href="javascript:void(0);" class="icon mr-3"><i class="icon-envelope text-info"></i></a>
                                    <a href="javascript:void(0);" class="icon mr-3"><i class="icon-printer"></i></a>
                                </nav>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped table-vcenter text-nowrap">
                                <thead class="dark-mode">
                                    <tr>
                                        <th class="w60">#</th>
                                        <th></th>
                                        <th class="w100">Earnings</th>
                                        <th class="w100">Deductions</th>
                                        <th class="w100 text-right">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>01</td>
                                        <td>
                                            <span>Basic Salary</span>
                                        </td>
                                        <td>$1,500</td>
                                        <td>-</td>
                                        <td class="text-right">$380</td>
                                    </tr>
                                    <tr>
                                        <td>02</td>
                                        <td>
                                            <span>House Rent Allowance (H.R.A.)</span>
                                        </td>
                                        <td>$62</td>
                                        <td>-</td>
                                        <td class="text-right">$250</td>
                                    </tr>
                                    <tr>
                                        <td>03</td>
                                        <td>
                                            <span>Tax Deducted at Source (T.D.S.)</span>
                                        </td>
                                        <td>-</td>
                                        <td>$80</td>
                                        <td class="text-right">$120</td>
                                    </tr>                                                
                                    <tr>
                                        <td>04</td>
                                        <td>
                                            <span>C/Bank Loan</span>
                                        </td>
                                        <td>-</td>
                                        <td>$120</td>
                                        <td class="text-right">$120</td>
                                    </tr>                                                
                                    <tr>
                                        <td>05</td>
                                        <td>
                                            <span>Other Allowance</span>
                                        </td>
                                        <td>$121</td>
                                        <td>-</td>
                                        <td class="text-right">$120</td>
                                    </tr>                                                
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="2"><span><strong>Note:</strong> Ipsum is simply dummy text of the printing and typesetting industry.</span></td>
                                        <td>$1683</td>
                                        <td>$200</td>
                                        <td class="text-right">
                                            <strong class="text-success">$1483.00</strong>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                            <button class="btn btn-info float-right"><i class="icon-printer"></i> Print</button>
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


<script src="../assets/bundles/counterup.bundle.js"></script>

<script src="../assets/js/core.js"></script>
<script>
$(function() {
    "use strict";
    $('.counter').counterUp({
        delay: 10,
        time: 1000
    });
});
</script>

</body>

</html>
