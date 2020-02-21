<!DOCTYPE html>
<html lang="en">

<head>
    <title>Contact List - Laravel</title>
    <jsp:include page="../common/meta.jsp"/>

<link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">    
    
<link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css">
<link rel="stylesheet" href="../assets/plugins/dropify/css/dropify.min.css">
    

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
            <a class="header-brand" href="../hrms/index.jsp"><i class="fe fe-command brand-logo"></i></a>
            <div class="dropdown">
                <a href="search.jsp" class="nav-link icon"><i class="fa fa-search"></i></a>
                <a href="calendar.jsp" class="nav-link icon app_inbox"><i class="fa fa-calendar"></i></a>
                <a href="contact.jsp" class="nav-link icon xs-hide"><i class="fa fa-id-card-o"></i></a>
                <a href="../chatapp/chat.jsp" class="nav-link icon xs-hide"><i class="fa fa-comments-o"></i></a>
                <a href="filemanager.jsp" class="nav-link icon app_file xs-hide"><i class="fa fa-folder-o"></i></a>
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
                <h1 class="page-title">Contact List</h1>
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
                <div class="card">
                    <div class="card-body">
                        <div class="d-md-flex justify-content-between">
                            <ul class="nav nav-tabs b-none">
                                <li class="nav-item"><a class="nav-link active" id="list-tab" data-toggle="tab" href="#list"><i class="fa fa-list-ul"></i> List</a></li>
                                <li class="nav-item"><a class="nav-link" id="grid-tab" data-toggle="tab" href="#grid"><i class="fa fa-th"></i> Grid</a></li>
                                <li class="nav-item"><a class="nav-link" id="addnew-tab" data-toggle="tab" href="#addnew"><i class="fa fa-plus"></i> Add New</a></li>
                            </ul>
                            <div class="d-flex align-items-center sort_stat">
                                <div class="d-flex">
                                    <span class="bh_income">2,5,1,8,3,6,7,5,3,6,7,5</span>
                                    <div class="ml-2">
                                        <p class="mb-0 font-11">MY INCOME</p>
                                        <h5 class="font-16 mb-0">$5,510</h5>
                                    </div>
                                </div>
                                <div class="d-flex ml-3">
                                    <span class="bh_traffic">5,8,9,10,5,2,5,8,9,10</span> 
                                    <div class="ml-2">
                                        <p class="mb-0 font-11">SITE TRAFFIC</p>
                                        <h5 class="font-16 mb-0">53% Up</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mt-2">
                            <input type="text" class="form-control search" placeholder="Search...">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section-body">
    <div class="container-fluid">
        <div class="tab-content">
            <div class="tab-pane fade show active" id="list" role="tabpanel">
                <div class="table-responsive" id="users">
                    <table class="table table-hover table-vcenter text-nowrap table_custom border-style list">
                        <tbody>
                            <tr class="">
                                <td class="width35 hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar4.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div><a href="javascript:void(0);">John Smith</a></div>
                                    <div class="text-muted">+264-625-2583</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">johnsmith@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="width35 hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar2.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div><a href="javascript:void(0);">Merri Diamond</a></div>
                                    <div class="text-muted">+264-625-2583</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">hermanbeck@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star love"><i class="fa fa-heart"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar3.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div class="from"><a href="javascript:void(0);">Sara Hopkins</a></div>
                                    <div class="text-muted">+264-625-3333</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">maryadams@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star active"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar7.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div class="from"><a href="javascript:void(0);">Andrew Patrick</a></div>
                                    <div class="text-muted">+264-625-2586</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">mikethimas@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar5.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div class="from"><a href="javascript:void(0);">Claire Peters</a></div>
                                    <div class="text-muted">+264-625-3333</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">clairepeters@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="" >
                                <td class="hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar6.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div class="from"><a href="javascript:void(0);">Allen Collins</a></div>
                                    <div class="text-muted">+264-625-4526</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">kenpatrick@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">728 Blackburn St. Andover, MA 01810</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="width35 hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar4.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div><a href="javascript:void(0);">Erin Gonzales</a></div>
                                    <div class="text-muted">+264-625-1593</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">eringonzales@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">455 S. Airport St. Moncks Corner, SC 29461</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr class="">
                                <td class="hidden-xs">
                                    <a href="javascript:void(0);" class="mail-star"><i class="fa fa-star"></i></a>
                                </td>
                                <td class="text-center width40">
                                    <div class="avatar d-block">
                                        <img class="avatar" src="../assets/images/xs/avatar5.jpg" alt="avatar">
                                    </div>
                                </td>
                                <td>
                                    <div class="from"><a href="javascript:void(0);">Harry McCall</a></div>
                                    <div class="text-muted">+264-625-2468</div>
                                </td>
                                <td class="hidden-xs">
                                    <div class="text-muted">susiewillis@info.com</div>
                                </td>
                                <td class="hidden-sm">
                                    <div class="text-muted">19 Ohio St. Snellville, GA 30039</div>                                                
                                </td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Phone"><i class="fa fa-phone"></i></a>
                                    <a class="btn btn-sm btn-link" href="javascript:void(0)" data-toggle="tooltip" title="Mail"><i class="fa fa-envelope"></i></a>
                                    <a class="btn btn-sm btn-link hidden-xs js-sweetalert" data-type="confirm" href="javascript:void(0)" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="grid" role="tabpanel">
                <div class="row row-deck">
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card " >
                            <div class="card-body">
                                <div class="card-status bg-blue"></div>
                                <div class="mb-3"> <img src="../assets/images/sm/avatar1.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Paul Schmidt</h5>
                                    <p class="text-muted">Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar8.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3"> <img src="../assets/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Andrew Patrick</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3"> <img src="../assets/images/sm/avatar3.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Mary Schneider</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card " >
                            <div class="card-body">
                                <div class="card-status bg-green"></div>
                                <div class="mb-3"> <img src="../assets/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Sean Black</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar6.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar5.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar7.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3"> <img src="../assets/images/sm/avatar5.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">David Wallace</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar3.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar4.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="card-status bg-pink"></div>
                                <div class="mb-3"> <img src="../assets/images/sm/avatar6.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Andrew Patrick</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar5.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar6.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar1.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3"> <img src="../assets/images/sm/avatar2.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Michelle Green</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar8.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar7.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3"> <img src="../assets/images/sm/avatar4.jpg" class="rounded-circle w100" alt=""> </div>
                                <div class="mb-2">
                                    <h5 class="mb-0">Mary Schneider</h5>
                                    <p>Aalizeethomas@info.com</p>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam deleniti fugit incidunt</span>
                                </div>
                                <span class="font-12 text-muted">Common Contact</span>
                                <ul class="list-unstyled team-info margin-0 pt-2">
                                    <li><img src="../assets/images/xs/avatar2.jpg" alt="Avatar"></li>
                                    <li><img src="../assets/images/xs/avatar7.jpg" alt="Avatar"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="addnew" role="tabpanel">
                <div class="card">
                    <div class="card-body">
                        <div class="row clearfix">
                            <div class="col-lg-4 col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter Name">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Enter Number">
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Enter Email">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12">
                                <div class="form-group">
                                    <textarea type="text" class="form-control" rows="4">Enter your Address</textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <input type="file" class="dropify">
                            </div>
                            <div class="col-lg-12 mt-3">
                                <button type="submit" class="btn btn-primary">Add</button>
                                <button type="submit" class="btn btn-default">Cancel</button>
                            </div>
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


<!-- Default Size -->
<div class="modal fade" id="addcontact" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="title" id="defaultModalLabel">Add Contact</h6>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-6">
                        <div class="form-group">                                    
                            <input type="text" class="form-control" placeholder="First Name">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">                                   
                            <input type="text" class="form-control" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">                                    
                            <input type="number" class="form-control" placeholder="Phone Number">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">                                    
                            <input type="text" class="form-control" placeholder="Enter Address">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">                                            
                            <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                            <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
                        </div>
                        <hr>
                    </div>
                    <div class="col-6">
                        <div class="form-group">                                    
                            <input type="text" class="form-control" placeholder="Facebook">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">                                   
                            <input type="text" class="form-control" placeholder="Twitter">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">                                    
                            <input type="text" class="form-control" placeholder="Linkedin">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">                                    
                            <input type="text" class="form-control" placeholder="instagram">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Add</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">CLOSE</button>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>


<script src="../assets/bundles/sweetalert.bundle.js"></script>
<script src="../assets/plugins/dropify/js/dropify.min.js"></script>

<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/sweetalert.js"></script>
<script>
$(function() {
    "use strict";
    
    $('.dropify').dropify();

    var drEvent = $('#dropify-event').dropify();
    drEvent.on('dropify.beforeClear', function(event, element) {
        return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
    });

    drEvent.on('dropify.afterClear', function(event, element) {
        alert('File deleted');
    });

    $('.dropify-fr').dropify({
        messages: {
            default: 'Glissez-déposez un fichier ici ou cliquez',
            replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
            remove: 'Supprimer',
            error: 'Désolé, le fichier trop volumineux'
        }
    });
});
</script>

</body>

</html>
