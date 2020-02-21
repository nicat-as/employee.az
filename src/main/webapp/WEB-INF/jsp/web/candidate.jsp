<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 04.10.19
  Time: 01:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Candidate Profile</title>
    <jsp:include page="common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="common/css.jsp"/>
    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css" />
    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css" />
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status"><img src="../../../images/header/loadinganimation.gif" id="preloader_image" alt="loader">
    </div>
</div>
<!-- Top Scroll End -->

<jsp:include page="common/top-header.jsp"/>

<!-- Header Wrapper Start -->
<div class="jp_top_header_img_wrapper">
    <div class="gc_main_menu_wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                    <div class="gc_header_wrapper">
                        <div class="gc_logo">
                            <a href="index"><img src="../../../images/header/logo2.png" alt="Logo" title="Employee.Az" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                   <jsp:include page="common/menu.jsp"/>
                </div>
                <!-- mobile menu area end -->
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="jp_navi_right_btn_wrapper">
                        <ul>
                            <li><a href="add_postin"><i class="fa fa-plus-circle"></i>&nbsp; Post a job</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header Wrapper End -->

<!-- jp Tittle Wrapper Start -->
<div class="jp_tittle_main_wrapper">
    <div class="jp_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_tittle_heading_wrapper">
                    <div class="jp_tittle_heading">
                        <h2>${candidate.user.name}-Profile</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="/">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="candidates">Pages</a> <i class="fa fa-angle-right"></i></li>
                                <li>${candidate.user.name}-Profile</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp Tittle Wrapper End -->
<!-- jp profile Wrapper Start -->
<div class="jp_cp_profile_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="jp_cp_left_side_wrapper">
                    <div class="jp_cp_left_pro_wallpaper">
                        <img src="rest/candidates/${candidate.id}/profile/image" alt="profile_img">
                        <h2>${candidate.user.name} ${candidate.user.surname}</h2>
                        <p>${candidate.position} in ${candidate.address.city.name} </p>
                        <ul>
                            <li><a href="${candidate.github}"><i class="fa fa-github"></i></a></li>
                            <li><a href="${candidate.facebook}"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="${candidate.twitter}"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="${candidate.linkedin}"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="${candidate.instagram}"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="${candidate.gitlab}"><i class="fa fa-gitlab"></i></a></li>
                        </ul>
                    </div>
                    <div class="jp_cp_rd_wrapper">
                        <ul>
                            <li><a href="#"><i class="fa fa-download"></i> &nbsp;Download Resume</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i> &nbsp;Contact candidate</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="jp_cp_right_side_wrapper">
                    <div class="jp_cp_right_side_inner_wrapper">
                        <h2>PERSONAL DETAILS</h2>
                        <table>
                            <tbody>
                            <tr>
                                <td class="td-w25">Full Name</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">${candidate.user.name} ${candidate.user.surname}</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Address</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">${candidate.address.info}, ${candidate.address.city.name}, ${candidate.address.country.name}</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Phone</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">${candidate.user.phone}, ${candidate.user.mobile}</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Email</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">${candidate.user.email}</td>
                            </tr>
                            <tr>
                                <td class="td-w25">Website</td>
                                <td class="td-w10">:</td>
                                <td class="td-w65">http://example.com</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <div class="accordion_wrapper abt_page_2_wrapper">
                            <div class="panel-group" id="accordion_threeLeft">


                                <!-- /.panel-default -->
                                <div class="panel panel-default">
                                    <div class="panel panel-default">
                                        <div class="panel-heading bell">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse"
                                                   data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree1"
                                                   aria-expanded="false">
                                                    EDUCATION
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwentyLeftThree1" class="panel-collapse collapse"
                                             aria-expanded="false" role="tablist">
                                            <div class="panel-body">
                                                <table class="table">
                                                    <thead>
                                                    <th scope="col">Education Level</th>
                                                    <th scope="col">Education Organization</th>
                                                    <th scope="col">Start Date</th>
                                                    <th scope="col">End Date</th>
                                                    <th scope="col">Country</th>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <c:forEach items="${candidate.educationList}" var="education">
                                                            <td>${education.degree.name}</td>

                                                            <c:choose>
                                                                <c:when test="${education.educationOrganization.name != ''}">
                                                                    <td>${education.educationOrganization.name}</td>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <td>${education.educationOrganizationName}</td>
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <c:if test="${education.startDate != null}">
                                                                <td>${education.startDate}</td>
                                                            </c:if>

                                                            <c:if test="${education.endDate != null}">
                                                                <td>${education.endDate}</td>
                                                            </c:if>

                                                            <td>${education.country.name}</td>
                                                        </c:forEach>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading bell">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse"
                                                   data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree2"
                                                   aria-expanded="false">
                                                    CERTIFICATES
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwentyLeftThree2" class="panel-collapse collapse"
                                             aria-expanded="false" role="tablist">
                                            <div class="panel-body">
                                                <table class="table">
                                                    <thead>
                                                    <th scope="col">Title</th>
                                                    <th scope="col">Organization</th>
                                                    <th scope="col">Certificate Date</th>
                                                    <th scope="col">File</th>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${candidate.certificateList}" var="certificate">
                                                        <tr>
                                                            <td>${certificate.title}</td>
                                                            <td>${certificate.organization}</td>
                                                            <td>${certificate.certificateDate}</td>
                                                            <td>${certificate.file}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading bell">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse"
                                                   data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree3"
                                                   aria-expanded="false">
                                                    LANGUAGE SKILLS
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwentyLeftThree3" class="panel-collapse collapse"
                                             aria-expanded="false" role="tablist">
                                            <div class="panel-body">
                                                <table class="table">
                                                    <thead>
                                                    <th scope="col">Language</th>
                                                    <th scope="col">Reading</th>
                                                    <th scope="col">Speaking</th>
                                                    <th scope="col">Writing</th>
                                                    <th scope="col">Listening</th>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${candidate.languageSkillList}" var="language">
                                                        <tr>
                                                            <td>${language.language.name}</td>
                                                            <td>${language.reading}</td>
                                                            <td>${language.speaking}</td>
                                                            <td>${language.writing}</td>
                                                            <td>${language.listening}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading bell">
                                            <h4 class="panel-title">
                                                <a class="collapsed" data-toggle="collapse"
                                                   data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree4"
                                                   aria-expanded="false">
                                                    SKILLS
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwentyLeftThree4" class="panel-collapse collapse"
                                             aria-expanded="false" role="tablist">
                                            <div class="panel-body">
                                                <table class="table">
                                                    <thead>
                                                    <th scope="col">Name</th>
                                                    <th scope="col">Level</th>
                                                    <th scope="col">Info</th>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${candidate.skillList}" var="skill">
                                                        <tr>
                                                            <td>${skill.name}</td>
                                                            <td>${skill.level}</td>
                                                            <td>${skill.info}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel-heading bell">
                                        <h4 class="panel-title">
                                            <a class="collapsed" data-toggle="collapse"
                                               data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree"
                                               aria-expanded="false">
                                                JOB HISTORY
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwentyLeftThree" class="panel-collapse collapse"
                                         aria-expanded="false" role="tablist">
                                        <div class="panel-body">
                                            <table class="table">
                                                <thead>
                                                <th scope="col">Position</th>
                                                <th scope="col">Company</th>
                                                <th scope="col">Start Date</th>
                                                <th scope="col">End Date</th>
                                                <th scope="col">Country</th>
                                                <th scope="col">City</th>
                                                <th scope="col">Info</th>
                                                </thead>
                                                <tbody>
                                                <c:forEach items="${candidate.jobHistoryList}" var="job">
                                                    <tr>
                                                        <td>${job.position}</td>
                                                        <td>${job.company}</td>
                                                        <td>${job.startDate}</td>
                                                        <c:if test="${job.endDate != null}">
                                                            <td>${job.endDate}</td>
                                                        </c:if>
                                                        <td>${job.country.name}</td>
                                                        <td>${job.city.name}</td>
                                                        <td>${job.info}</td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <c:if test="${not empty candidate.tagList}">
                                        Tags:
                                        <c:forEach items="${candidate.tagList}" var="tag">
                                            <a href="${tag.name}">${tag.name}</a>
                                        </c:forEach>
                                    </c:if>
                                    <!-- /.panel-default -->
                                </div>
                                <!--end of /.panel-group-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jp profile Wrapper End -->


<!-- jp downlord Wrapper Start -->
<jsp:include page="common/download.jsp"/>
<!-- jp downlord Wrapper End -->

<!-- jp Newsletter Wrapper Start -->
<jsp:include page="common/newsletter.jsp"/>
<!-- jp footer Wrapper End -->

<!--main js file start-->
<jsp:include page="common/js.jsp"/>
<script src="../../../js/jquery.magnific-popup.js"></script>
<script src="../../../js/custom_II.js"></script>
<!--main js file end-->
</body>


</html>