<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 04.10.19
  Time: 01:26
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
    <title>Add Post</title>
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
                            <a href="../../../index.jsp"><img src="../../../images/header/logo2.png" alt="Logo" title="Job Pro" class="img-responsive"></a>
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
                            <li><a href="add_postin.jsp"><i class="fa fa-plus-circle"></i>&nbsp; Post a job</a></li>
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
                        <h2>Add-Posting</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li>Add-Posting</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp Tittle Wrapper End -->
<!-- jp ad post Wrapper Start -->
<div class="jp_adp_main_section_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="jp_adp_form_heading_wrapper">
                    <h2>Job Details</h2>
                </div>
                <div class="jp_adp_form_wrapper">
                    <input type="text" placeholder="Job Title">
                </div>
                <div class="jp_adp_form_wrapper">
                    <select>
                        <option>Job Location</option>
                        <option>Job Location</option>
                        <option>Job Location</option>
                        <option>Job Location</option>
                    </select>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-md-6 col-xs-12">
                        <div class="jp_adp_form_wrapper">
                            <input type="text" placeholder="Salary Min">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-md-6 col-xs-12">
                        <div class="jp_adp_form_wrapper">
                            <input type="text" placeholder="Salary Max">
                        </div>
                    </div>
                </div>
                <div class="jp_adp_form_wrapper">
                    <input type="text" placeholder="Notic Period">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 bottom_line_Wrapper">
                <div class="jp_adp_form_heading_wrapper">
                    <p>Fields with * are mandetory</p>
                </div>
                <div class="jp_adp_form_wrapper">
                    <select>
                        <option>Job Category</option>
                        <option>Job Category</option>
                        <option>Job Category</option>
                        <option>Job Category</option>
                    </select>
                </div>
                <div class="jp_adp_form_wrapper">
                    <select>
                        <option>Job Type</option>
                        <option>Job Type</option>
                        <option>Job Type</option>
                        <option>Job Type</option>
                    </select>
                </div>
                <div class="jp_adp_form_wrapper">
                    <input type="text" placeholder="Skills required">
                </div>
                <div class="jp_adp_form_wrapper">
                    <input type="text" placeholder="Joining facilities">
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_adp_textarea_main_wrapper">
                    <textarea rows="7" placeholder="Job Description"></textarea>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_adp_choose_resume">
                    <p>Company Post</p>
                    <div class="custom-input">
                        <span><i class="fa fa-upload"></i> &nbsp;Upload Job Post</span>
                        <input type="file" name="resume" id="resume" />
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_adp_choose_resume_bottom_btn_post">
                    <ul>
                        <li><a href="#"><i class="fa fa-plus-circle"></i>&nbsp; Post a job</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp ad post Wrapper End -->

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