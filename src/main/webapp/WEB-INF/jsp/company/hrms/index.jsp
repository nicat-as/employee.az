<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard</title>
    <jsp:include page="../common/meta.jsp"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->


    <link rel="stylesheet" href="/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/company-app-box.css">


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
                    <a href="javascript:void(0)" class="nav-link icon settingbar"><i class="fa fa-gear fa-spin"
                                                                                     data-toggle="tooltip"
                                                                                     data-placement="right"
                                                                                     title="Settings"></i></a>
                    <a href="javascript:void(0)" class="nav-link user_btn"><img class="avatar"
                                                                                src="/assets/images/user.png" alt=""
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
        <jsp:include page="../common/tabcontentsettings.jsp"/>
    </div>
    <div class="user_div">
        <h5 class="brand-name mb-4">Employee.az<a href="index" class="user_btn"><i class="icon-logout"></i></a>
        </h5>
        <div class="card">
            <div class="card-body">
                <div class="media">
                    <img class="avatar avatar-xl mr-3" src="/assets/images/sm/avatar1.jpg" alt="avatar">
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
        <h5 class="brand-name"><a href="/">Employee.az</a>  <a href="javascript:void(0)" class="menu_option float-right"><i
                class="icon-grid font-16" data-toggle="tooltip" data-placement="left"
                title="Grid & List Toggle"></i></a></h5>
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
                            <h4 id="wel">${user.name} ${user.surname}</h4>
                            <small>Measure How Fast You’re Growing Monthly Recurring Revenue. <a href="#">Learn More</a>
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section-body">
            <div class="container-fluid">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="Employee-list" role="tabpanel">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Application List</h3>
                                <div class="card-options">
                                    <form>
                                        <div class="input-group">
                                            <input type="text" class="form-control form-control-sm" placeholder="Search something..." name="s">
                                            <span class="input-group-btn ml-2"><button class="btn btn-icon btn-sm" type="submit"><span class="fe fe-search"></span></button></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="application-table" >
                                        <thead>
                                            <tr>
                                                <td>Photo</td>
                                                <td>Name</td>
                                                <td>Email</td>
                                                <td>Title</td>
                                                <td>Date</td>
                                                <td>Position</td>
                                                <td>Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Employee-view" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="media mb-4">
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
                                        <p class="mb-4">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
                                        <button class="btn btn-outline-primary btn-sm"><span class="fa fa-twitter"></span> Follow</button>
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
                                                    <label class="mb-0">Project</label>
                                                    <h4 class="font-30 font-weight-bold">45</h4>
                                                </div>
                                                <div class="col-6 pb-3">
                                                    <label class="mb-0">Growth</label>
                                                    <h4 class="font-30 font-weight-bold">87%</h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="d-block">Laravel<span class="float-right">77%</span></label>
                                            <div class="progress progress-xs">
                                                <div class="progress-bar bg-blue" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="width: 77%;"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="d-block">HTML<span class="float-right">50%</span></label>
                                            <div class="progress progress-xs">
                                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
                                            </div>
                                        </div>
                                        <div class="form-group mb-0">
                                            <label class="d-block">Photoshop <span class="float-right">23%</span></label>
                                            <div class="progress progress-xs">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-12">
                                <div class="card">
                                    <div class="card-body">
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
                                                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
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
                        </div>
                    </div>
                    <div class="tab-pane fade" id="Employee-Request" role="tabpanel">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped table-vcenter text-nowrap mb-0">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Employee ID</th>
                                            <th>Leave Type</th>
                                            <th>Date</th>
                                            <th>Reason</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="width45">
                                                <span class="avatar avatar-orange" data-toggle="tooltip" title="" data-original-title="Avatar Name">DB</span>
                                            </td>
                                            <td>
                                                <div class="font-15">Marshall Nichols</div>
                                            </td>
                                            <td><span>LA-8150</span></td>
                                            <td><span>Casual Leave</span></td>
                                            <td>24 July, 2019 to 26 July, 2019</td>
                                            <td>Going to Family Function</td>
                                            <td>
                                                <button type="button" class="btn btn-icon btn-sm" title="Approved"><i class="fa fa-check text-success"></i></button>
                                                <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width45">
                                                <span class="avatar avatar-pink" data-toggle="tooltip" title="" data-original-title="Avatar Name">GC</span>
                                            </td>
                                            <td>
                                                <div class="font-15">Gary Camara</div>
                                            </td>
                                            <td><span>LA-8795</span></td>
                                            <td><span>Medical Leave</span></td>
                                            <td>20 July, 2019 to 26 July, 2019</td>
                                            <td>Going to Development</td>
                                            <td>
                                                <button type="button" class="btn btn-icon btn-sm" title="Approved"><i class="fa fa-check text-success"></i></button>
                                                <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width45">
                                                <img class="avatar" src="../assets/images/xs/avatar1.jpg" data-toggle="tooltip" title="" data-original-title="Avatar Name">
                                            </td>
                                            <td>
                                                <div class="font-15">Maryam Amiri</div>
                                            </td>
                                            <td><span>LA-0258</span></td>
                                            <td><span>Casual Leave</span></td>
                                            <td>21 July, 2019 to 26 July, 2019</td>
                                            <td>Attend Birthday party</td>
                                            <td>
                                                <button type="button" class="btn btn-icon btn-sm" title="Approved"><i class="fa fa-check text-success"></i></button>
                                                <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="width45">
                                                <img class="avatar" src="../assets/images/xs/avatar2.jpg" data-toggle="tooltip" title="" data-original-title="Avatar Name">
                                            </td>
                                            <td>
                                                <div class="font-15">Frank Camly</div>
                                            </td>
                                            <td><span>LA-1515</span></td>
                                            <td><span>Casual Leave</span></td>
                                            <td>11 Aug, 2019 to 21 Aug, 2019</td>
                                            <td>Going to Holiday</td>
                                            <td>
                                                <button type="button" class="btn btn-icon btn-sm" title="Approved"><i class="fa fa-check text-success"></i></button>
                                                <button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>
                                            </td>
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
        </div>
    </div>
</div>


<!-- Scripts -->
<script src="/assets/bundles/lib.vendor.bundle.js"></script>


<script src="/assets/bundles/apexcharts.bundle.js"></script>
<script src="/assets/bundles/counterup.bundle.js"></script>
<script src="/assets/bundles/knobjs.bundle.js"></script>

<script src="/assets/js/core.js"></script>
<script src="/assets/js/page/index.js"></script>

</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#application-table').DataTable({
            "lengthMenu": [[5, 10, 20, 50, 100, -1], [5, 10, 20, 50, 100, 'All']],
            "processing": true,
            "serverSide": true,
            "ajax": "/company/ApplicationListAjax"
        });
    });
</script>

</html>

<%--<button type="button" class="btn btn-icon btn-sm" title="View"><i class="fa fa-eye"></i></button>--%>
<%--<button type="button" class="btn btn-icon btn-sm" title="Edit"><i class="fa fa-edit"></i></button>--%>
<%--<button type="button" class="btn btn-icon btn-sm js-sweetalert" title="Delete" data-type="confirm"><i class="fa fa-trash-o text-danger"></i></button>--%>

<%--<tr>--%>
<%--    <td class="w40">--%>
<%--        <img class="avatar" src="../assets/images/xs/avatar2.jpg" data-toggle="tooltip" title="" data-original-title="Avatar Name">--%>
<%--    </td>--%>
<%--    <td class="d-flex">--%>
<%--        <div class="ml-3">--%>
<%--            <h6 class="mb-0">Debra Stewart</h6>--%>
<%--            <span class="text-muted">marshall-n@gmail.com</span>--%>
<%--        </div>--%>
<%--    </td>--%>
<%--    <td><span>LA-0216</span></td>--%>
<%--    <td><span>+ 264-625-4613</span></td>--%>
<%--    <td>28 July, 2015</td>--%>
<%--    <td>Web Developer</td>--%>
<%--    <td>--%>

<%--    </td>--%>
<%--</tr>--%>
