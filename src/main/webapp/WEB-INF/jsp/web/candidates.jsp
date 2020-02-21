<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Candidates</title>
    <jsp:include page="common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="common/css.jsp"/>
    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css"/>
    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css"/>
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
                            <a href="index"><img src="../../../images/header/logo2.png" alt="Logo" title="Employee.Az"
                                                 class="img-responsive"></a>
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
<!-- Header Wrapper End -->
<div class="jp_bottom_footer_Wrapper_header_img_wrapper">
    <div class="jp_slide_img_overlay"></div>
    <div class="jp_banner_heading_cont_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_job_heading_wrapper">
                        <div class="jp_job_heading">
                            <h1><span>3,000+</span> Browse Jobs</h1>
                            <p>Find Jobs, Employment & Career Opportunities</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_header_form_wrapper">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <input type="text" placeholder="Keyword e.g. (Job Title, Description, Tags)">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="jp_form_location_wrapper">
                                <i class="fa fa-dot-circle-o first_icon"></i><select>
                                <option>Select Location</option>
                                <option>Select Location</option>
                                <option>Select Location</option>
                                <option>Select Location</option>
                                <option>Select Location</option>
                            </select><i class="fa fa-angle-down second_icon"></i>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div class="jp_form_exper_wrapper">
                                <i class="fa fa-dot-circle-o first_icon"></i><select>
                                <option>Experience</option>
                                <option>Experience</option>
                                <option>Experience</option>
                                <option>Experience</option>
                                <option>Experience</option>
                            </select><i class="fa fa-angle-down second_icon"></i>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                            <div class="jp_form_btn_wrapper">
                                <ul>
                                    <li><a href="#"><i class="fa fa-search"></i> Search</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_banner_main_jobs_wrapper">
                        <div class="jp_banner_main_jobs">
                            <ul>
                                <li><i class="fa fa-tags"></i> Trending Keywords :</li>
                                <li><a href="#">ui designer,</a></li>
                                <li><a href="#">developer,</a></li>
                                <li><a href="#">senior</a></li>
                                <li><a href="#">it company,</a></li>
                                <li><a href="#">design,</a></li>
                                <li><a href="#">call center</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Header W rapper End -->
<!-- jp listing sidebar Wrapper Start -->
<div class="jp_listing_sidebar_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_listing_heading_wrapper">
                    <h2>We found <span>357</span> Matches for you.</h2>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Jobs by Category</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c1" name="cb">
                                                <label for="c1">Graphic Designer <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c2" name="cb">
                                                <label for="c2">Engineering Jobs <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c3" name="cb">
                                                <label for="c3">Mainframe Jobs <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c4" name="cb">
                                                <label for="c4">Legal Jobs <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c5" name="cb">
                                                <label for="c5">IT Jobs <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c6" name="cb">
                                                <label for="c6">R&D Jobs <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c7" name="cb">
                                                <label for="c7">Government Jobs <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c8" name="cb">
                                                <label for="c8">PSU Jobs <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Jobs by Location</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c9" name="cb">
                                                <label for="c9">Jobs in Delhi <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c10" name="cb">
                                                <label for="c10">Jobs in Mumbai <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c11" name="cb">
                                                <label for="c11">Jobs in Chennai <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c12" name="cb">
                                                <label for="c12">Jobs in Gurgaon <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c13" name="cb">
                                                <label for="c13">Jobs in Noida <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c14" name="cb">
                                                <label for="c14">Jobs in Kolkata <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c15" name="cb">
                                                <label for="c15">Jobs in Hyderabad <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c16" name="cb">
                                                <label for="c16">Jobs in Pune <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Your Skill’s</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c17" name="cb">
                                                <label for="c17">Javascript <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c18" name="cb">
                                                <label for="c18">HTML5 <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c19" name="cb">
                                                <label for="c19">CSS3 <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c20" name="cb">
                                                <label for="c20">PHP <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c21" name="cb">
                                                <label for="c21">Sales <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c22" name="cb">
                                                <label for="c22">Marketing <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c23" name="cb">
                                                <label for="c23">Social Media <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c24" name="cb">
                                                <label for="c24">Web Design <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Salary</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c25" name="cb">
                                                <label for="c25">$1k - 2k <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c26" name="cb">
                                                <label for="c26">$3k - 5k <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c27" name="cb">
                                                <label for="c27">$5k - 8k <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c28" name="cb">
                                                <label for="c28">$5k - 10k <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c29" name="cb">
                                                <label for="c29">$10k - 20k <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c30" name="cb">
                                                <label for="c30">$20k - 30k <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c31" name="cb">
                                                <label for="c31">$30k - 50k <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c32" name="cb">
                                                <label for="c32">$50k - 80k <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Types</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c33" name="cb">
                                                <label for="c33">Types <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c34" name="cb">
                                                <label for="c34">Part-time <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c35" name="cb">
                                                <label for="c35">Contract <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c36" name="cb">
                                                <label for="c36">Remotely <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c37" name="cb">
                                                <label for="c37">Temporary <span>(1254)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_add_resume_wrapper jp_job_location_wrapper">
                            <div class="jp_add_resume_img_overlay"></div>
                            <div class="jp_add_resume_cont">
                                <img src="../../../images/content/resume_logo.png" alt="logo"/>
                                <h4>Get Best Matched Jobs On your Email. Add Resume NOW!</h4>
                                <ul>
                                    <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;ADD RESUME</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="gc_causes_select_box_wrapper">
                                    <div class="gc_causes_select_box">
                                        <select>
                                            <option>Sort Default</option>
                                            <option>Sort Default</option>
                                            <option>Sort Default</option>
                                        </select><i class="fa fa-angle-down"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                <div class="gc_causes_view_tabs_wrapper">
                                    <div class="gc_causes_view_tabs">
                                        <ul class="nav nav-pills">
                                            <li class="active"><a data-toggle="pill" href="#grid"><i
                                                    class="fa fa-th-large"></i></a></li>
                                            <li><a data-toggle="pill" href="#list"><i class="fa fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                <div class="gc_causes_search_box_wrapper gc_causes_search_box_wrapper2">
                                    <div class="gc_causes_search_box">
                                        <p>You're Watching &nbsp;<span>01 to 20</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="tab-content">
                            <div id="grid" class="tab-pane fade in active">
                                <div class="row">
                                    <c:forEach items="${candidateList}" var="candidate">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="jp_job_post_main_wrapper_cont jp_job_post_grid_main_wrapper_cont">
                                                <div class="jp_job_post_main_wrapper jp_job_post_grid_main_wrapper">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="jp_job_post_side_img">
                                                                <img src="rest/candidates/${candidate.id}/profile/image"
                                                                     width="100" height="95" alt="post_img"/>
                                                            </div>
                                                            <div class="jp_job_post_right_cont jp_job_post_grid_right_cont">
                                                                <h4>${candidate.user.name}&nbsp;${candidate.user.surname}</h4>
                                                                <p>${candidate.position}</p>
                                                                <ul>
                                                                    <li>
                                                                        <i class="fa fa-cc-paypal"></i>&nbsp;${candidate.salaryMin}
                                                                        - ${candidate.salaryMax}</li>
                                                                    <li>
                                                                        <i class="fa fa-map-marker"></i>&nbsp; ${candidate.address.country.name}&nbsp; ${candidate.address.city.name}
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="jp_job_post_right_btn_wrapper jp_job_post_grid_right_btn_wrapper">
                                                                <ul>
                                                                    <li><a href="#"><i class="fa fa-heart-o"></i></a>
                                                                    </li>
                                                                    <li><a href="#">Part Time</a></li>
                                                                    <li><a href="candidate?id=${candidate.id}">View</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jp_job_post_keyword_wrapper">
                                                    <ul>
                                                        <li><i class="fa fa-tags"></i>Keywords :</li>
                                                        <li><a href="#">ui designer,</a></li>
                                                        <li><a href="#">developer,</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                                        <div class="pager_wrapper gc_blog_pagination">
                                            <ul class="pagination">
                                                <c:choose>
                                                    <c:when test="${currentPage <= 1}">
                                                        <li><a href="#">Prev.</a></li>
                                                    </c:when>
                                                    <c:when test="${currentPage <= pageCount}">
                                                        <li><a href="candidates?page=${currentPage - 1}">Prev.</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="#">Prev.</a></li>
                                                    </c:otherwise>
                                                </c:choose>

                                                <c:forEach begin="1" end="${pageCount}" var="pc">
                                                    <c:choose>
                                                        <c:when test="${pc == currentPage}">
                                                            <li class="active"><a href="candidates?page=${pc}">${pc}</a>
                                                            </li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li><a href="candidates?page=${pc}">${pc}</a></li>
                                                        </c:otherwise>
                                                    </c:choose>

                                                </c:forEach>

                                                <c:choose>
                                                    <c:when test="${currentPage == pageCount}">
                                                        <li><a href="#">Next</a></li>
                                                    </c:when>
                                                    <c:when test="${currentPage < pageCount}">
                                                        <li><a href="candidates?page=${currentPage + 1}">Next</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="#">Next</a></li>
                                                    </c:otherwise>
                                                </c:choose>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="list" class="tab-pane fade">
                                <div class="row">
                                    <c:forEach items="${candidateList}" var="candidate">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="jp_job_post_main_wrapper_cont jp_job_post_grid_main_wrapper_cont">
                                                <div class="jp_job_post_main_wrapper">
                                                    <div class="row">
                                                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                                            <div class="jp_job_post_side_img">
                                                                <img src="/rest/candidates/${candidate.id}/profile/image"
                                                                     alt="post_img"/>
                                                            </div>
                                                            <div class="jp_job_post_right_cont">
                                                                <h4>${candidate.user.name} ${candidate.user.surname}</h4>
                                                                <p>${candidate.position}</p>
                                                                <ul>
                                                                    <li>
                                                                        <i class="fa fa-cc-paypal"></i>&nbsp;${candidate.salaryMin}-${candidate.salaryMax}
                                                                    </li>
                                                                    <li>
                                                                        <i class="fa fa-map-marker"></i>&nbsp;${candidate.address.country.name},${candidate.address.city.name}
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                            <div class="jp_job_post_right_btn_wrapper">
                                                                <ul>
                                                                    <li><a href="#"><i class="fa fa-heart-o"></i></a>
                                                                    </li>
                                                                    <li><a href="#">Part Time</a></li>
                                                                    <li><a href="candidate?id=${candidate.id}">View</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jp_job_post_keyword_wrapper">
                                                    <ul>
                                                        <li><i class="fa fa-tags"></i>Keywords :</li>
                                                        <c:forEach items="${candidate.tagList}" var="tag"
                                                                   varStatus="vs">
                                                            <li><a href="#">${tag.name}
                                                                <c:if test="${not vs.last}">,</c:if>
                                                            </a></li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>


                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                                        <div class="pager_wrapper gc_blog_pagination">
                                            <ul class="pagination">
                                                <c:choose>
                                                    <c:when test="${currentPage <= 1}">
                                                        <li><a href="#">Prev.</a></li>
                                                    </c:when>
                                                    <c:when test="${currentPage <= pageCount}">
                                                        <li><a href="candidates?page=${currentPage - 1}">Prev.</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="#">Prev.</a></li>
                                                    </c:otherwise>
                                                </c:choose>

                                                <c:forEach begin="1" end="${pageCount}" var="p">

                                                    <c:choose>
                                                        <c:when test="${p == currentPage}">
                                                            <li class="active"><a href="candidates?page=${p}">${p}</a>
                                                            </li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li><a href="candidates?page=${p}">${p}</a></li>
                                                        </c:otherwise>
                                                    </c:choose>

                                                </c:forEach>

                                                <c:choose>
                                                    <c:when test="${currentPage == pageCount}">
                                                        <li><a href="#">Next</a></li>
                                                    </c:when>
                                                    <c:when test="${currentPage < pageCount}">
                                                        <li><a href="candidates?page=${currentPage + 1}">Next</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="#">Next</a></li>
                                                    </c:otherwise>
                                                </c:choose>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 visible-sm visible-xs">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Jobs by Category</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c101" name="cb">
                                                <label for="c101">Graphic Designer <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c102" name="cb">
                                                <label for="c102">Engineering Jobs <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c103" name="cb">
                                                <label for="c103">Mainframe Jobs <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c104" name="cb">
                                                <label for="c104">Legal Jobs <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c105" name="cb">
                                                <label for="c105">IT Jobs <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c106" name="cb">
                                                <label for="c106">R&D Jobs <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c107" name="cb">
                                                <label for="c107">Government Jobs <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c108" name="cb">
                                                <label for="c108">PSU Jobs <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Jobs by Location</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c109" name="cb">
                                                <label for="c109">Jobs in Delhi <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c110" name="cb">
                                                <label for="c110">Jobs in Mumbai <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c111" name="cb">
                                                <label for="c111">Jobs in Chennai <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c112" name="cb">
                                                <label for="c112">Jobs in Gurgaon <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c113" name="cb">
                                                <label for="c113">Jobs in Noida <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c114" name="cb">
                                                <label for="c114">Jobs in Kolkata <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c115" name="cb">
                                                <label for="c115">Jobs in Hyderabad <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c116" name="cb">
                                                <label for="c116">Jobs in Pune <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Your Skill’s</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c117" name="cb">
                                                <label for="c117">Javascript <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c118" name="cb">
                                                <label for="c118">HTML5 <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c119" name="cb">
                                                <label for="c119">CSS3 <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c120" name="cb">
                                                <label for="c120">PHP <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c121" name="cb">
                                                <label for="c121">Sales <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c122" name="cb">
                                                <label for="c122">Marketing <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c123" name="cb">
                                                <label for="c123">Social Media <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c124" name="cb">
                                                <label for="c124">Web Design <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Salary</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c125" name="cb">
                                                <label for="c125">$1k - 2k <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c126" name="cb">
                                                <label for="c126">$3k - 5k <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c127" name="cb">
                                                <label for="c127">$5k - 8k <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c128" name="cb">
                                                <label for="c128">$5k - 10k <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c129" name="cb">
                                                <label for="c129">$10k - 20k <span>(1254)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c130" name="cb">
                                                <label for="c130">$20k - 30k <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c131" name="cb">
                                                <label for="c131">$30k - 50k <span>(350)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c132" name="cb">
                                                <label for="c132">$50k - 80k <span>(221)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_job_location_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Types</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p>
                                                <input type="checkbox" id="c133" name="cb">
                                                <label for="c133">Types <span>(214)</span></label>

                                            <p>
                                                <input type="checkbox" id="c134" name="cb">
                                                <label for="c134">Part-time <span>(514)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c135" name="cb">
                                                <label for="c135">Contract <span>(554)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c136" name="cb">
                                                <label for="c136">Remotely <span>(457)</span></label>
                                            </p>
                                            <p>
                                                <input type="checkbox" id="c137" name="cb">
                                                <label for="c137">Temporary <span>(1254)</span></label>
                                            </p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><i class="fa fa-plus-circle"></i> <a href="#">SHOW MORE</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_add_resume_wrapper jp_job_location_wrapper">
                            <div class="jp_add_resume_img_overlay"></div>
                            <div class="jp_add_resume_cont">
                                <img src="images/content/resume_logo.png" alt="logo"/>
                                <h4>Get Best Matched Jobs On your Email. Add Resume NOW!</h4>
                                <ul>
                                    <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;ADD RESUME</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 visible-sm visible-xs">
                        <div class="pager_wrapper gc_blog_pagination">
                            <ul class="pagination">
                                <li><a href="#">Prev.</a></li>
                                <c:forEach begin="1" end="${pageCount}" var="p">
                                    <c:choose>
                                        <c:when test="${p == currentPage}">
                                            <li class="active"><a href="candidates?page=${p}">${p}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="candidates?page=${p}">${p}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <li><a href="#">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp listing sidebar Wrapper End -->

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
