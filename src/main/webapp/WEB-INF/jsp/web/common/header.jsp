<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="jp_top_header_img_wrapper">
    <div class="jp_slide_img_overlay"></div>
    <div class="gc_main_menu_wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                    <div class="gc_header_wrapper">
                        <div class="gc_logo">
                            <a href="index"><img src="images/header/logo.png" alt="Logo" title="Employee.Az" class="img-responsive"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-8 col-sm-12 col-xs-12 center_responsive">
                   <jsp:include page="menu.jsp"/>
                </div>
                <!-- mobile menu area end -->
                <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="jp_navi_right_btn_wrapper">
                        <ul>
                            <li><a href="register"><i class="fa fa-user"></i>&nbsp; Register</a></li>
                            <li><a href="login"><i class="fa fa-sign-in"></i>&nbsp; LOGIN</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="jp_banner_heading_cont_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_job_heading_wrapper">
                        <div class="jp_job_heading">
                            <h1><span>3,000+</span> Browse Jobs</h1>
                            <p>Find  Jobs, Employment & CaNreer Opportunities</p>
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
    <div class="jp_banner_jobs_categories_wrapper">
        <div class="container">

            <c:forEach items="${jobCategory}" var="item">
                <div class="jp_top_jobs_category_wrapper jp_job_cate_left_border jp_job_cate_left_border_bottom">
                    <div class="jp_top_jobs_category">
                        <i class="${item.iconClass}"></i>
                        <h3><a href="job?category=${item.id}">${item.name}</a></h3>
                        <p>(${item.count} jobs)</p>
                    </div>
                </div>
            </c:forEach>

            <div class="jp_top_jobs_category_wrapper">
                <div class="jp_top_jobs_category">
                    <i class="fa fa-th-large"></i>
                    <h3><a href="#">All Jobs</a></h3>
                    <p>(${jobCount} jobs)</p>
                </div>
            </div>


        </div>
    </div>
</div>