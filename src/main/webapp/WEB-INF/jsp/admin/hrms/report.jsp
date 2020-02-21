<!DOCTYPE html>
<html lang="en">

<head>
    <title>Reports</title>
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
                <h1 class="page-title">Report</h1>
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
        <div class="d-md-flex justify-content-between align-items-center">
            <ul class="nav nav-tabs page-header-tab">
                <li class="nav-item"><a class="nav-link active" id="Report-tab" data-toggle="tab" href="#Report-Invoices">Expenses</a></li>
                <li class="nav-item"><a class="nav-link" id="Report-tab" data-toggle="tab" href="#Report-Invoice">Invoice</a></li>
                <li class="nav-item"><a class="nav-link" id="Report-tab" data-toggle="tab" href="#Report-detail">Detail</a></li>
            </ul>
            <div class="header-action d-flex">
                <select class="custom-select mr-2">
                    <option>Year</option>
                    <option>Month</option>
                    <option>Week</option>
                </select>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"><i class="fe fe-plus mr-2"></i>Add</button>
            </div>
        </div>
    </div>
</div>
<div class="section-body mt-3">
    <div class="container-fluid">
        <div class="tab-content mt-3">
            <div class="tab-pane fade show active" id="Report-Invoices" role="tabpanel">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-value float-right text-azure">23%</div>
                                <h4 class="mb-1">$<span class="counter">562</span></h4>
                                <div>Computer</div>
                                <div class="mt-4">
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-azure" style="width: 23%"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-value float-right text-cyan">52%</div>
                                <h4 class="mb-1">$<span class="counter">2,450</span></h4>
                                <div>Laptop</div>
                                <div class="mt-4">
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-cyan" style="width: 52%"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-value float-right text-danger">27%</div>
                                <h4 class="mb-1">$<span class="counter">1,258</span></h4>
                                <div>Accessories</div>
                                <div class="mt-4">
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-danger" style="width: 27%"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="card-value float-right text-pink">12%</div>
                                <h4 class="mb-1">$<span class="counter">562</span></h4>
                                <div>Others</div>
                                <div class="mt-4">
                                    <div class="progress progress-xs">
                                        <div class="progress-bar bg-pink" style="width: 12%"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-hover table-striped table-vcenter mb-0 text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Item</th>
                                        <th>Order by</th>
                                        <th>From</th>
                                        <th>Date</th>
                                        <th>Paid By</th>
                                        <th>Status</th>
                                        <th>Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>HP Laptop</td>
                                        <td>Marshall Nichols</td>
                                        <td>Paytem</td>
                                        <td>07 March, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$205</td>
                                    </tr>
                                    <tr>
                                        <td>iMack Desktop</td>
                                        <td>Marshall Nichols</td>
                                        <td>ebay USA</td>
                                        <td>22 July, 2017</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$355</td>
                                    </tr>
                                    <tr>
                                        <td>Logitech USB Mouse, Keyboard</td>
                                        <td>Marshall Nichols</td>
                                        <td>Amazon</td>
                                        <td>28 July, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$40</td>
                                    </tr>
                                    <tr>
                                        <td>MacBook Pro Air</td>
                                        <td>Debra Stewart</td>
                                        <td>Amazon</td>
                                        <td>17 Jun, 2018</td>
                                        <td><i class="payment payment-mastercard" data-toggle="tooltip" title="" data-original-title="payment payment-mastercard"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$800</td>
                                    </tr>
                                    <tr>
                                        <td>Dell Monitor 28 inch</td>
                                        <td>Ava Alexander</td>
                                        <td>Flipkart UK</td>
                                        <td>21 Jun, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$205</td>
                                    </tr>
                                    <tr>
                                        <td>Logitech USB Mouse, Keyboard</td>
                                        <td>Marshall Nichols</td>
                                        <td>Amazon</td>
                                        <td>28 July, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$40</td>
                                    </tr>
                                    <tr>
                                        <td>MacBook Pro Air</td>
                                        <td>Debra Stewart</td>
                                        <td>Amazon</td>
                                        <td>17 Jun, 2018</td>
                                        <td><i class="payment payment-mastercard" data-toggle="tooltip" title="" data-original-title="payment payment-mastercard"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$800</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="Report-Invoice" role="tabpanel">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col-lg-4">
                                <h4 class="mb-1"><i class="mdi mdi-trending-down text-danger"></i> <span class="counter">562</span></h4>
                                <div class="text-muted-dark">Total Approved</div>
                            </div>
                            <div class="col-lg-4">
                                <h4 class="mb-1"><i class="mdi mdi-trending-up text-success"></i> <span class="counter">254</span></h4>
                                <div class="text-muted-dark">Pending Invoice</div>
                            </div>
                            <div class="col-lg-4">
                                <h4 class="mb-1"><i class="mdi mdi-trending-neutral text-warning"></i> <span class="counter">982</span></h4>
                                <div class="text-muted-dark">Closed</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Invoices</h3>
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
                            <table class="table table-hover table-striped table-vcenter text-nowrap">
                                <thead>
                                    <tr>
                                        <th>Invoice No.</th>
                                        <th>Clients</th>
                                        <th>Date</th>
                                        <th>Type</th>
                                        <th>Status</th>
                                        <th class="w100">Amount</th>
                                        <th class="w150">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#LA-5218</td>
                                        <td>vPro tec LLC.</td>
                                        <td>07 March, 2018</td>
                                        <td><i class="payment payment-cirrus" data-toggle="tooltip" title="" data-original-title="payment payment-cirrus"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$4,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-1212</td>
                                        <td>BT Technology</td>
                                        <td>25 Jun, 2018</td>
                                        <td><i class="payment payment-bitcoin" data-toggle="tooltip" title="" data-original-title="payment payment-bitcoin"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$5,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-0222</td>
                                        <td>More Infoweb Pvt.</td>
                                        <td>12 July, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$2,000</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-0312</td>
                                        <td>RETO Tech LLC.</td>
                                        <td>13 July, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$10,000</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-5656</td>
                                        <td>SDRAPP Pvt.</td>
                                        <td>27 July, 2018</td>
                                        <td><i class="payment payment-visa-dark" data-toggle="tooltip" title="" data-original-title="payment payment-visa-dark"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$1,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-4515</td>
                                        <td>Kdash Infoweb LLC.</td>
                                        <td>07 March, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$4,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-1212</td>
                                        <td>BT Technology</td>
                                        <td>25 Jun, 2018</td>
                                        <td><i class="payment payment-bitcoin" data-toggle="tooltip" title="" data-original-title="payment payment-bitcoin"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$5,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-0222</td>
                                        <td>More Infoweb Pvt.</td>
                                        <td>12 July, 2018</td>
                                        <td><i class="payment payment-paypal" data-toggle="tooltip" title="" data-original-title="payment payment-paypal"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$2,000</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-7845</td>
                                        <td>BT infoweb</td>
                                        <td>25 Jun, 2018</td>
                                        <td><i class="payment payment-bitcoin" data-toggle="tooltip" title="" data-original-title="payment payment-bitcoin"></i></td>
                                        <td><span class="badge badge-warning">Pending</span></td>
                                        <td>$5,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#LA-5656</td>
                                        <td>SDRAPP Pvt.</td>
                                        <td>27 July, 2018</td>
                                        <td><i class="payment payment-visa-dark" data-toggle="tooltip" title="" data-original-title="payment payment-visa-dark"></i></td>
                                        <td><span class="badge badge-success">Approved</span></td>
                                        <td>$1,205</td>
                                        <td>
                                            <button type="button" class="btn btn-icon btn-sm" title="Send Invoice" data-toggle="tooltip" data-placement="top"><i class="icon-envelope text-info"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Print" data-toggle="tooltip" data-placement="top"><i class="icon-printer"></i></button>
                                            <button type="button" class="btn btn-icon btn-sm" title="Delete" data-toggle="tooltip" data-placement="top"><i class="icon-trash text-danger"></i></button>
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
            <div class="tab-pane fade" id="Report-detail" role="tabpanel">
                <div class="row clearfix">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">#AB0017</h3>
                                <div class="card-options">
                                    <button type="button" class="btn btn-primary"><i class="si si-printer"></i> Print Invoice</button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row my-8">
                                    <div class="col-6">
                                        <p class="h3">Company</p>
                                        <address>
                                        Street Address<br>
                                        State, City<br>
                                        Region, Postal Code<br>
                                        ltd@example.com
                                        </address>
                                    </div>
                                    <div class="col-6 text-right">
                                        <p class="h3">Client</p>
                                        <address>
                                        Street Address<br>
                                        State, City<br>
                                        Region, Postal Code<br>
                                        ctr@example.com
                                        </address>
                                    </div>
                                </div>
                                <div class="table-responsive push">
                                    <table class="table table-bordered table-hover text-nowrap">
                                        <tbody><tr>
                                            <th class="text-center width35"></th>
                                            <th>Product</th>
                                            <th class="text-center" style="width: 1%">Qnt</th>
                                            <th class="text-right" style="width: 1%">Unit</th>
                                            <th class="text-right" style="width: 1%">Amount</th>
                                        </tr>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td>
                                                <p class="font600 mb-1">Logo Creation</p>
                                                <div class="text-muted">Logo and business cards design</div>
                                            </td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$1.800,00</td>
                                            <td class="text-right">$1.800,00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">2</td>
                                            <td>
                                                <p class="font600 mb-1">Online Store Design &amp; Development</p>
                                                <div class="text-muted">Design/Development for all popular modern browsers</div>
                                            </td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$20.000,00</td>
                                            <td class="text-right">$20.000,00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">3</td>
                                            <td>
                                                <p class="font600 mb-1">App Design</p>
                                                <div class="text-muted">Promotional mobile application</div>
                                            </td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$3.200,00</td>
                                            <td class="text-right">$3.200,00</td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="font600 text-right">Subtotal</td>
                                            <td class="text-right">$25.000,00</td>
                                        </tr>
                                        <tr class="bg-light">
                                            <td colspan="4" class="font600 text-right">Vat Rate</td>
                                            <td class="text-right">20%</td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="font600 text-right">Vat Due</td>
                                            <td class="text-right">$5.000,00</td>
                                        </tr>
                                        <tr class="bg-green text-light">
                                            <td colspan="4" class="font700 text-right">Total Due</td>
                                            <td class="font700 text-right">$30.000,00</td>
                                        </tr>
                                    </tbody></table>
                                </div>
                                <p class="text-muted text-center">Thank you very much for doing business with us. We look forward to working with you again!</p>
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
