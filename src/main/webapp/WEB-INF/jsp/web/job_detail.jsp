<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 22:04
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
    <title>Job Content</title>
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

<jsp:include page="common/job-header.jsp"/>

<!-- jp Tittle Wrapper Start -->
<div class="jp_tittle_main_wrapper">
    <div class="jp_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_tittle_heading_wrapper">
                    <div class="jp_tittle_heading">
                        <h2>${jobDetail.position}</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">Jobs</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">${jobDetail.organization.industry.name}</a> <i class="fa fa-angle-right"></i></li>
                                <li>${jobDetail.position}</li>
                            </ul>
                        </div>
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
                        <h2>Job Description</h2>
                        <p>${jobDetail.about}</p>
                        <ul>
                            <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="#">www.example.com</a></li>
                            <li><i class="fa fa-file-pdf-o"></i>&nbsp;&nbsp; <a href="#">Download Info</a></li>

                        </ul>
                    </div>
                    <div class="jp_job_res">
                        <h2>Requirements</h2>
                        <p>${jobDetail.requirement}</p>
<%--                        <ul>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Build next-generation web applications with a focus on the client side.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Redesign UI's, implement new UI's, and pick up Java as necessary.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Explore and design dynamic and compelling consumer experiences.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Design and build scalable framework for web applications.</li>--%>
<%--                        </ul>--%>
                    </div>
<%--                    <div class="jp_job_res jp_job_qua">--%>
<%--                        <h2>Minimum qualifications</h2>--%>
<%--                        <ul>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; BA/BS degree in a technical field or equivalent practical experience.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; 2 years of relevant work experience in software development.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Programming experience in C, C++ or Java.</li>--%>
<%--                            <li><i class="fa fa-caret-right"></i>&nbsp;&nbsp; Experience with AJAX, HTML and CSS.</li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                    <div class="jp_job_apply">--%>
<%--                        <h2>How To Apply</h2>--%>
<%--                        <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Curabitur non nulla sit amet nisl tempus convallis quis ac--%>
<%--                            lectus.</p>--%>
<%--                    </div>--%>
<%--                    <div class="jp_job_map">--%>
<%--                        <h2>Loacation</h2>--%>
<%--                        <div id="map" style="width:100%; float:left; height:300px;"></div>--%>
<%--                    </div>--%>
                </div>
                <div class="jp_listing_left_bottom_sidebar_wrapper">
                    <div class="jp_listing_left_bottom_sidebar_social_wrapper">
                        <ul class="hidden-xs">
                            <li>SHARE :</li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
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
<%--   --%>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper jp_rightside_listing_single_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4>Job Overview</h4>
                            </div>
                            <div class="jp_jop_overview_img_wrapper">
                                <div class="jp_jop_overview_img">
                                    <img src="../../../images/content/job_post_img1.jpg" alt="post_img" />
                                </div>
                            </div>
                            <div class="jp_job_listing_single_post_right_cont">
                                <div class="jp_job_listing_single_post_right_cont_wrapper">
                                    <h4>${jobDetail.position}</h4>
                                    <p>${jobDetail.organization.name}</p>
                                </div>
                            </div>
                            <div class="jp_job_post_right_overview_btn_wrapper">
                                <div class="jp_job_post_right_overview_btn">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                        <li><a href="#">${jobDetail.type.name()}</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="jp_listing_overview_list_outside_main_wrapper">
                                <div class="jp_listing_overview_list_main_wrapper">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Date Posted:</li>
                                            <li>${jobDetail.postDate}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Location:</li>
                                            <li>${jobDetail.address.country.name} - ${jobDetail.address.city.name}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-info-circle"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Job Title:</li>
                                            <li>${jobDetail.position}</li>
                                        </ul>
                                    </div>

                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Deadline:</li>
                                            <li>${jobDetail.deadline}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Salary:</li>
                                            <li>${jobDetail.minSalary} - ${jobDetail.maxSalary}</li>
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
                                            <li>${jobDetail.category.name}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                    <div class="jp_listing_list_icon">
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="jp_listing_list_icon_cont_wrapper">
                                        <ul>
                                            <li>Experience:</li>
                                            <li>${jobDetail.minExperience} - ${jobDetail.maxExperience}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_right_bar_btn_wrapper">
                                    <div class="jp_listing_right_bar_btn">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;Apply With Facebook</a></li>
                                            <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp;Apply NOw!</a></li>
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


<!-- Mirrored from www.webstrot.com/html/jobpro/job_light/listing_single.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Sep 2019 12:39:33 GMT -->
</html>
