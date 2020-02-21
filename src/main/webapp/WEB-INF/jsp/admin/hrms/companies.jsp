<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Companies</title>
    <jsp:include page="../common/meta.jsp"/>

    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>

    <style>
        .pagination {
            display: inline-block;
        }

        .pagination a {
            float: left;
            padding: 10px 18px;
            text-decoration: none;
        }


        .pagination a.active {
            background-color: #4CAF50;
            color: white;
        }

    </style>
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
        <jsp:include page="../common/tabcontentsettings.jsp"/>
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
                <jsp:include page="../common/metismenu.jsp"/>
            </ul>
        </nav>
    </div>
    <div class="page">
        <div id="page_top" class="section-body">
            <div class="container-fluid">
                <div class="page-header">
                    <div class="left">
                        <h1 class="page-title">Companies</h1>
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
                        <li class="nav-item"><a class="nav-link active" id="companies-tab" data-toggle="tab"
                                                href="#companies-list">List View</a></li>

                        <li class="nav-item"><a class="nav-link" id="companies-tab" onclick="getCompaniesgrid(1)"  data-toggle="tab"
                                                href="#companies-grid">Grid View</a></li>
                    </ul>
                    <div class="header-action">
                        <a href="addCompany"> <button type="button" class="btn btn-primary"   ><i
                                class="fe fe-plus mr-2"></i> Add
                        </button></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-body mt-3">
            <div class="container-fluid">
                <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="companies-list" role="tabpanel">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Company List</h3>
                                <div class="card-options">
                                    <form>
                                        <div class="input-group">
                                            <input type="text" class="form-control form-control-sm"
                                                   placeholder="Search something..." name="s">
                                            <span class="input-group-btn ml-2"><button class="btn btn-icon"
                                                                                       type="submit"><span
                                                    class="fe fe-search"></span></button></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="companyTable" class="table table-striped table-vcenter table-hover mb-0 text-nowrap">
                                        <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Company Name</th>
                                            <th>Field</th>
                                            <th>Head Office</th>
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
                    <div class="tab-pane fade" id="companies-grid" role="tabpanel">
                        <div id="gridcomp" class="row clearfix">

                        </div>
                        <div id="paging" class="pagination" >
<%--                            <a href="#">&laquo;</a>--%>
<%--                            <a href="#">1</a>--%>
<%--                            <a class="active" href="#">2</a>--%>
<%--                            <a href="#">3</a>--%>
<%--                            <a href="#">4</a>--%>
<%--                            <a href="#">5</a>--%>
<%--                            <a href="#">6</a>--%>
<%--                            <a href="#">&raquo;</a>--%>
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


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Company</h5>
                <button type="button"  class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Company Name">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Company Head">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="number" class="form-control" placeholder="No of Employee">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<%--Popup window views company--%>
<div class="modal fade" id="popupview" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Company</h4>
            </div>
            <div class="modal-body">
                <div class="modal-body" style="font-size:  larger">
                    Organization Name : <span style="font-size: large" id="organizationName"></span> <br>
                    Industry Name :<span style="font-size: large" id="industryName"></span> <br>
                    Head Office :<span style="font-size: large" id="headOffice"></span> <br>
                    Create Date :<span style="font-size: large" id="createDate"></span> <br>
                    Employee Number :<span style="font-size: large" id="employeeNumber"></span> <br>
                    Annual Renvenue :<span style="font-size: large" id="annualRenvenue"></span> <br>
                    Rating : <span style="font-size: large" id="rating"></span> <br>
                    About :<span style="font-size: large" id="about"></span> <br>
                    Global :<span style="font-size: large" id="global"></span> <br>
                    Phone :<span style="font-size: large" id="phone"></span> <br>
                    Mobile :<span style="font-size: large" id="mobile"></span> <br>
                    Email :<span style="font-size: large" id="email"></span> <br>
                    Website :<span style="font-size: large" id="website"></span> <br>
                    Facebook :<span style="font-size: large" id="Facebook"></span> <br>
                    Instagram :<span style="font-size: large" id="Instagram"></span> <br>
                    Twitter :<span style="font-size: large" id="Twitter"></span> <br>
                    Linkedin :<span style="font-size: large" id="Linkedin"></span> <br>

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Scripts -->
<script src="../assets/bundles/lib.vendor.bundle.js"></script>


<script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>

<script src="../assets/js/core.js"></script>
<script src="../assets/js/page/dialogs.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script>

    $(document).ready(

        function get_data() {
        $('#companyTable').DataTable({
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "processing": true,
            "serverSide": true,
            "ajax": "getCompaniesList"
        })

            $(document).on('click', '.delete', function () {
                var id = $(this).attr("id");
                if (confirm("Are you sure?")) {
                    $.ajax({
                        url: "deletecompany",
                        method: "get",
                        data: {id: id},
                        success: function (serverResponse) {
                            if (serverResponse){
                            $('#companyTable').DataTable().destroy();
                                $('#gridcomp').empty();
                                getCompaniesgrid(1);
                                get_data();
                            }
                        }
                    });
                }
            });
    }

    );

    function getCompaniesgrid(page) {
        if (page < 1){
            page=1;
        }
        $('#gridcomp').empty();
        $('#paging').empty();
        $.ajax({
            url: "getCompaniesgrid",
            method: "get",
            data:{page : page},
            success: function (serverResponse) {
                $.each(serverResponse.data, function(idx) {
                     $('#gridcomp').append('<div class="col-lg-3 col-md-6">\n' +
                         '                                     <div class="card">\n' +
                         '                                         <div class="card-body text-center">\n' +
                         '                                             <img class="img-thumbnail rounded-circle avatar-xxl"\n' +
                         '                                                  src="../assets/images/sm/avatar3.jpg" alt="">\n' +
                         '                                             <h6 class="mt-3"> </h6>\n' +
                         '                                             <div class="text-center text-muted mb-3">' +serverResponse.data[idx].organizationName +'</div>\n' +
                         '                                             <div  class="text-center text-muted mb-3">'+serverResponse.data[idx].about+'</div>\n' +
                         '                                             <button type="button" class="btn btn-icon btn-sm btn-outline-primary"><i\n' +
                         '                                                    data-toggle="modal" data-target="#popupview" id='+serverResponse.data[idx].id+' ' +
                     '                                                                      onclick="showdetail(this)" ' +
                     '                                                                       class="fa fa-eye"></i></button>\n' +
                         '                                             <a href="updateCompany?id='+serverResponse.data[idx].id +'"><button type="button"  class="btn btn-icon btn-sm btn-outline-primary"><i\n' +
                         '                                                     class="fa fa-pencil"></i></button><a/> \n' +
                         '                                             <button type="button" id='+serverResponse.data[idx].id +' class="btn btn-danger btn-xs delete"  ><i\n' +
                         '                                                     class="fa fa-trash"></i></button>\n' +
                         '                                         </div>\n' +
                         '                                         <div class="card-footer text-center">\n' +
                         '                                             <div class="row clearfix">\n' +
                         '                                                 <div class="col-6">\n' +
                         '                                                     <div  class="text-muted">'+serverResponse.data[idx].industryName +'</div>\n' +
                         '                                                 </div>\n' +
                         '                                                 <div class="col-6">\n' +
                         '<%--                                                     <h5 class="mb-0">$1800</h5>--%>\n' +
                         '                                                     <div  class="text-muted">'+serverResponse.data[idx].headOffice +'</div>\n' +
                         '                                                 </div>\n' +
                         '                                             </div>\n' +
                         '                                         </div>\n' +
                         '                                     </div>\n' +
                         '                                 </div>');

                });


                $('#paging').append('<a href="#" onclick="getCompaniesgrid('+(serverResponse.currentPage-1)+')" >&laquo;</a>');
                $('#paging').append('<a href="#"  onclick="getCompaniesgrid(1)">First</a>');

                if (serverResponse.currentPage<=2){
                    for (var i = 1; i <= 3; i++) {
                        if (serverResponse.currentPage==i){
                            $('#paging').append('<a class="active" href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                        }else {
                            $('#paging').append('<a href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                        }
                    }
                }else if (serverResponse.currentPage+2>=serverResponse.pageCount){
                    for (var i = serverResponse.currentPage-2; i <= serverResponse.pageCount; i++) {
                        if (serverResponse.currentPage==i){
                            $('#paging').append('<a class="active" href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                        }else {
                            $('#paging').append('<a href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                        }
                    }
                }else {
                for (var i = serverResponse.currentPage-2; i <= serverResponse.currentPage+2; i++) {
                    if (serverResponse.currentPage==i){
                        $('#paging').append('<a class="active" href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                    }else {
                        $('#paging').append('<a href="#" onclick="getCompaniesgrid('+i+')">'+i+'</a>');
                    }
                }
                }


                $('#paging').append('<a href="#"  onclick="getCompaniesgrid('+serverResponse.pageCount+')">Last</a>');
                if (serverResponse.currentPage==page){
                    $('#paging').append('<a href="#" onclick="getCompaniesgrid('+serverResponse.currentPage+')" >&raquo;</a>');
                }else {
                    $('#paging').append('<a href="#" onclick="getCompaniesgrid('+(serverResponse.currentPage+1)+')" >&raquo;</a>');
                }

            }
        });

    }

    function showdetail(button){
        var id= button.id;
        $.ajax({
            url: "viewCompany",
            method: "get",
            data: {id: id},
            success: function (serverResponse) {
                document.getElementById("organizationName").innerHTML = serverResponse.organizationName;
                document.getElementById("industryName").innerHTML = serverResponse.industryName;
                document.getElementById("headOffice").innerHTML = serverResponse.headOffice;
                document.getElementById("createDate").innerHTML = serverResponse.createDate;
                document.getElementById("employeeNumber").innerHTML = serverResponse.employeeNumber;
                document.getElementById("annualRenvenue").innerHTML = serverResponse.annualRenvenue;
                document.getElementById("rating").innerHTML = serverResponse.rating;
                document.getElementById("about").innerHTML = serverResponse.about;
                document.getElementById("global").innerHTML = serverResponse.global;
                document.getElementById("email").innerHTML = serverResponse.email;
                document.getElementById("website").innerHTML = serverResponse.website;
                document.getElementById("phone").innerHTML = serverResponse.phone;
                document.getElementById("mobile").innerHTML = serverResponse.mobile;
            }
        });

    }




</script>

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function() {
        $('#companyTable').DataTable( {
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "processing": true,
            "serverSide": true,
            "ajax": "getCompanyList"
        } );
    } );

    function  showDetail(button) {

        var id = button.id;

        $.ajax( {
            url: "viewCompany",
            method: "get",
            data:{id: id},
            success: function(serverResponse) {
                document.getElementById("")
            }
        })
    }




</script>

</body>

</html>
