<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 04.10.19
  Time: 00:40
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
    <title>Company page</title>
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
                            <a href="../../../index.jsp"><img src="../../../images/header/logo2.png" alt="Logo" title="Employee.Az" class="img-responsive"></a>
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
<div class="jp_tittle_main_wrapper jp_cs_tittle_main_wrapper">
    <div class="jp_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_tittle_heading_wrapper">
                    <div class="jp_tittle_heading">
                        <h2>${company.name}</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">Company</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">${company.industry.name}</a> <i class="fa fa-angle-right"></i></li>
                                <li><${company.name}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_cs_com_info_wrapper">
                    <div class="jp_cs_com_info_img">
                        <img src="../../../images/content/cs1.jpg" alt="job_img">
                    </div>
                    <div class="jp_cs_com_info_img_cont">
                        <h2>${company.name}</h2>
                        <p>${company.industry.name}</p>
                        <h3><i class="fa fa-map-marker"></i> &nbsp;&nbsp;Los Angeles Califonia PO, 455001</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp Tittle Wrapper End -->
<!-- jp listing Single cont Wrapper Start -->
<div class="jp_listing_single_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="jp_listing_left_sidebar_wrapper">
                    <div class="jp_job_des">
                        <h2>Company Description</h2>
                        <p>${company.about}</p>
                        <ul>
                            <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="#">www.example.com</a></li>
                            <li><i class="fa fa-file-pdf-o"></i>&nbsp;&nbsp; <a href="#">Download Info</a></li>

                        </ul>
                    </div>
                    <div class="jp_job_res">
                        <h2>Responsibilities</h2>
                        <p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur aliquet quam id
                            dui posuere blandit.</p>
                        <ul>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Build next-generation web applications with a focus on the client side.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Redesign UI's, implement new UI's, and pick up Java as necessary.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Explore and design dynamic and compelling consumer experiences.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Design and build scalable framework for web applications.</li>
                        </ul>
                    </div>
                    <div class="jp_job_res jp_job_qua">
                        <h2>Minimum qualifications</h2>
                        <ul>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; BA/BS degree in a technical field or equivalent practical experience.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; 2 years of relevant work experience in software development.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Programming experience in C, C++ or Java.</li>
                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Experience with AJAX, HTML and CSS.</li>
                        </ul>
                    </div>
                    <div class="jp_job_map">
                        <h2>Location</h2>
                        <div id="map" style="width:100%; float:left; height:300px;"></div>
                    </div>
                </div>
                <div class="jp_listing_left_bottom_sidebar_wrapper">
                    <div class="jp_listing_left_bottom_sidebar_social_wrapper">
                        <ul class="hidden-xs">
                            <li>SHARE :</li>
                            <li><a href="${company.facebook}"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="${company.twitter}"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="${company.instagram}"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="${company.linkedin}"><i class="fa fa-linkedin"></i></a></li>
                            <li class="hidden-xs"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li class="hidden-xs"><a href="#"><i class="fa fa-vimeo"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="jp_listing_left_bottom_sidebar_key_wrapper">
                    <ul>
                        <li><i class="fa fa-tags"></i>Keywords :</li>
                        <li><a href="#">ui designer,</a></li>
                        <li><a href="#">developer,</a></li>
                        <li><a href="#">senior</a></li>
                        <li><a href="#">it company,</a></li>
                        <li><a href="#">design,</a></li>
                        <li><a href="#">call center</a></li>
                    </ul>
                </div>


            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_rightside_listing_single_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Company Overview</h4>
                            </div>
                            <div class="jp_jop_overview_img_wrapper">
                                <div class="jp_jop_overview_img">
                                    <img src="../../../images/content/web.png" alt="post_img" />
                                </div>
                            </div>
                            <div class="jp_job_listing_single_post_right_cont">
                                <div class="jp_job_listing_single_post_right_cont_wrapper">
                                    <h4>${company.name}</h4>
                                    <p>${company.industry.name}</p>
                                </div>
                            </div>
                            <div class="jp_job_post_right_overview_btn_wrapper">
                                <div class="jp_job_post_right_overview_btn">
                                    <ul>
                                        <li><a href="companyJobs?id=${company.id}">${company.count} Jobs</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="jp_listing_overview_list_outside_main_wrapper">
                                <div class="jp_listing_overview_list_main_wrapper">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Location:</li>
                                            <li>Los Angeles Califonia PO, 455001</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-info-circle"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Job Open:</li>
                                            <li>${company.count} Jobs</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-th-large"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Category:</li>
                                            <li>Developer</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Create Date:</li>
                                            <li>${company.createDate}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_right_bar_btn_wrapper">
                                    <div class="jp_listing_right_bar_btn">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;Follow Facebook</a></li>
                                            <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;Follow NOw!</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp listing Single cont Wrapper End -->

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
<script>
    function initMap() {
        var uluru = {lat: -36.742775, lng:  174.731559};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15,
            scrollwheel: false,
            center: uluru
        });
        var marker = new google.maps.Marker({
            position: uluru,
            map: map
        });
    }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmdG8C6ItElq5ipuFv6O9AE48wyZm_vqU&amp;callback=initMap">
</script>
</body>


<!-- Mirrored from www.webstrot.com/html/jobpro/job_light/company_listing_single.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Sep 2019 12:39:38 GMT -->
</html>
