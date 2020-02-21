<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%--comment --%>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->


<head>
    <title>Employee.az</title>
    <jsp:include page="common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="common/css.jsp"/>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status"><img src="https://www.commsoft.ca/Public/img/icons/Employes-lg.png" id="preloader_image" alt="loader">
    </div>
</div>
<!-- Top Scroll End -->



<!-- jp first sidebar Wrapper Start -->
<div class="jp_first_sidebar_main_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_hiring_slider_main_wrapper">
                            <div class="jp_hiring_heading_wrapper">
                                <h2>Premium Jobs</h2>
                            </div>
                            <div class="jp_hiring_slider_wrapper">
                                <div class="owl-carousel owl-theme">
                                    <div class="item">
                                        <div class="jp_hiring_content_main_wrapper">
                                            <div class="jp_hiring_content_wrapper">
                                                <img src="images/content/hiring_img1.png" alt="hiring_img" />
                                                <h4>Akshay INC.</h4>
                                                <p>(NewYork)</p>
                                                <ul>
                                                    <li><a href="#">4 Opening</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="jp_hiring_content_main_wrapper">
                                            <div class="jp_hiring_content_wrapper">
                                                <img src="images/content/hiring_img2.png" alt="hiring_img" />
                                                <h4>Itcity INC.</h4>
                                                <p>(NewYork)</p>
                                                <ul>
                                                    <li><a href="#">4 Opening</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="jp_hiring_content_main_wrapper">
                                            <div class="jp_hiring_content_wrapper">
                                                <img src="images/content/hiring_img3.png" alt="hiring_img" />
                                                <h4>Akshay INC.</h4>
                                                <p>(NewYork)</p>
                                                <ul>
                                                    <li><a href="#">4 Opening</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="jp_hiring_content_main_wrapper">
                                            <div class="jp_hiring_content_wrapper">
                                                <img src="images/content/hiring_img4.png" alt="hiring_img" />
                                                <h4>Akshay INC.</h4>
                                                <p>(NewYork)</p>
                                                <ul>
                                                    <li><a href="#">4 Opening</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="cc_featured_product_main_wrapper">
                            <div class="jp_hiring_heading_wrapper jp_job_post_heading_wrapper">
                                <h2>Active Jobs</h2>
                            </div>
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#best" aria-controls="best" role="tab" data-toggle="tab">Active Jobs</a></li>
                            </ul>
                        </div>

                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="best">

                                <div class="ss_featured_products">


                                    <c:forEach items="${jobList}" var="job">
                                        <div class="item" data-hash="zero">


                                            <div class="jp_job_post_main_wrapper_cont">
                                                <div class="jp_job_post_main_wrapper">
                                                    <div class="row">
                                                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                                            <div class="jp_job_post_side_img">
                                                                <img src="images/content/job_post_img1.jpg" alt="post_img" />
                                                            </div>
                                                            <div class="jp_job_post_right_cont">
                                                                <h4>${job.position}</h4>
                                                                <c:if test="${job.organization != null}" >
                                                                    <p>${job.organization.name}</p>
                                                                </c:if>
                                                                <ul>
                                                                    <li><i class="fa fa-cc-paypal"></i>&nbsp; ${job.minSalary} - ${job.maxSalary}</li>
                                                                    <li><i class="fa fa-map-marker"></i>&nbsp; ${job.address.country.name}, ${job.address.city.name}</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                            <div class="jp_job_post_right_btn_wrapper">
                                                                <ul>
                                                                    <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                                                    <li><a href="#">${job.type.name()}</a></li>
                                                                    <li><a href="jobView?id=${job.id}">Apply</a></li>
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
                                                        <li><a href="#">senior</a></li>
                                                        <li><a href="#">it company,</a></li>
                                                        <li><a href="#">design,</a></li>
                                                        <li><a href="#">call center</a></li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                    </c:forEach>

                                </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                                    <div class="pager_wrapper gc_blog_pagination">
                                        <ul class="pagination">
                                            <li><a href="#">Priv.</a></li>
                                            <c:forEach begin="1" end="${pageCount}" var="jp">
                                                <c:choose>
                                                      <c:when test="${currentPage == jp}">
                                                              <li class="active"><a class="button secondary url owl_nav" href="companyJobs?id=${id}&page=${jp}">${jp}</a></li>
                                                       </c:when>
                                                       <c:otherwise>
                                                              <li><a class="button secondary url owl_nav" href="companyJobs?id=${id}&page=${jp}">${jp}</a></li>
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
    </div>
</div>
<!-- jp first sidebar Wrapper End -->


<!-- jp downlord Wrapper Start -->
<jsp:include page="common/download.jsp"/>
<!-- jp downlord Wrapper End -->

<!-- jp Newsletter Wrapper Start -->
<jsp:include page="common/newsletter.jsp"/>
<!-- jp footer Wrapper End -->

<!--main js file start-->
<jsp:include page="common/js.jsp"/>
<script src="js/custom.js"></script>
<!--main js file end-->
</body>


<!-- Mirrored from www.webstrot.com/html/jobpro/job_light/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 24 Sep 2019 12:31:38 GMT -->
</html>