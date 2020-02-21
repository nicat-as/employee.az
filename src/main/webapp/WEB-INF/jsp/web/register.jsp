<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Register</title>
    <jsp:include page="common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="common/css.jsp"/>
    <%--    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css" />--%>
    <link rel="stylesheet" type="text/css" href="css/style_II.css" />
    <%--    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css" />--%>
    <link rel="stylesheet" type="text/css" href="css/responsive2.css" />
</head>

<body>
<!-- preloader Start -->
<div id="preloader">
    <div id="status"><img src="images/header/loadinganimation.gif" id="preloader_image" alt="loader">
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
                            <a href="../../../index.jsp"><img src="images/header/logo2.png" alt="Logo" title="Job Pro" class="img-responsive"></a>
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
                        <h2>Register</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="#">Pages</a> <i class="fa fa-angle-right"></i></li>
                                <li>Register</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp Tittle Wrapper End -->

<!-- jp register wrapper start -->
<div class="register_section">
    <!-- register_form_wrapper -->
    <div class="register_tab_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div role="tabpanel">

                        <!-- Nav tabs -->
                        <ul id="tabOne" class="nav register-tabs">
                            <li class="active"><a href="#contentOne-1" data-toggle="tab">candidate account <br> <span>i am looking for a job</span></a>
                            </li>
                            <li><a href="#contentOne-2" data-toggle="tab">company account <br> <span>We are hiring Employees</span></a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade in active register_left_form" id="contentOne-1">
                                <form:form modelAttribute="candidateRegistrationForm" id="candidate_reg_form" action="register_candidate" method="post">
                                    <div class="jp_regiter_top_heading">
                                        <p>Fields with * are mandatory </p>
                                    </div>
                                    <div class="row">
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="firstName"/>
                                            <form:input path="firstName" id="first_name" placeholder="First name*"/>
                                            <span id="first_name_error" style="display: none ;color: red"></span>
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="lastName"/>
                                            <form:input path="lastName" id="last_name" placeholder="Last name*"/>
                                            <span id="last_name_error" style="display: none ;color: red"></span>

                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="email"/>
                                            <form:input path="email" id="email" placeholder="Email*"/>
                                            <span id="email_error" style="display: none; color: red"></span>
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="password"/>
                                            <form:password path="password" id="password" placeholder=" password*"/>
                                            <span id="password_error" style="display: none; color: red"></span>
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="passwordConfirm"/>
                                            <form:password path="passwordConfirm" id="password_confirm" placeholder="re-enter password*"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                <form:checkbox path="acceptTerms" id="accept_terms" value="OK"/>
                                                <label for="accept_terms">I agreed to the <a href="#" class="check_box_anchr">Terms and Conditions</a> governing the use of jobportal</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <input id="cand_reg_submit" type="submit" class="btn btn-primary login_btn"> Register </input>
                                    </div>
                                    <div class="login_message">
                                        <p>Already a member? <a href="#"> Login Here </a> </p>
                                    </div>
                                </form:form>
                            </div>

                            <div class="tab-pane fade register_left_form" id="contentOne-2">

                                <div class="jp_regiter_top_heading">
                                    <p>Fields with * are mandetory </p>
                                </div>
                                <div class="row clearfix">
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="field-name" value="" placeholder="Username*">
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="field-name" value="" placeholder="Email*">
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="password" name="field-name" value="" placeholder="password*">
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="password" name="field-name" value="" placeholder="re-enter password*">
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="text" name="field-name" value="" placeholder="phone">
                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="text" name="field-name" value="" placeholder="company name">

                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="text" name="field-name" value="" placeholder="website">

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="text" name="field-name" value="" placeholder="address line">
                                    </div>

                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="check-box text-center">
                                            <input type="checkbox" name="shipping-option" id="account-option_2"> &ensp;
                                            <label for="account-option_2">I agreed to the <a href="#" class="check_box_anchr">Terms and Conditions</a> governing the use of jobportal</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                    <input type="submit" class="btn btn-primary login_btn" value="register"/>
                                </div>
                                <div class="login_message">
                                    <p>Already a member? <a href="#"> Login Here </a> </p>
                                </div>

                            </div>

                        </div>

                        <p class="btm_txt_register_form">In case you are using a public/shared computer we recommend that you logout to prevent any un-authorized access to your account</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jp register wrapper end -->

<!-- jp Newsletter Wrapper Start -->
<jsp:include page="common/newsletter.jsp"/>
<!-- jp footer Wrapper End -->

<!--main js file start-->
<<jsp:include page="common/js.jsp"/>
<%--<script src="../../../js/jquery.magnific-popup.js"></script>--%>
<script src="js/jquery.magnific-popup.js"></script>

<%--<script src="../../../js/custom_II.js"></script>--%>
<script src="js/custom_II.js"></script>
<!--main js file end-->

<script>


    $(document).ready(function() {

        function getBaseUrl() {
            var re = new RegExp(/^.*\//);
            return re.exec(window.location.href);
        }

        function validateName(value,fieldsName,errorMsg) {
            var valid = true;
            var minLength = 2;
            var maxLength = 50;

            if(value.length <= minLength || value.length >= maxLength) {
                $(errorMsg).text(fieldsName + " minLength = " +minLength + " maxLength = " +maxLength);
                $(errorMsg).show();
                valid = false;
            }

            if (valid) {
                $(errorMsg).hide();
            }

            $("#cand_reg_submit").attr("disabled",!valid);

            return valid;
        }

        function isEmail(email) {
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(email);
        }

        function showEmailError(ermsg) {
            $("#email_error").text(ermsg);
            $("#email_error").show();
        }

        function validateEmail(value) {
            console.log('validate email ' + value);
            // email regex
            // check max length

            var valid = true;
            var maxLength = 50;

            if(isEmail(value)) {
                if (value.length >= maxLength) {
                    showEmailError("Email maxLength =  " +maxLength);
                    valid = false;
                }else {
                    // check duplicate

                    $.ajax({
                        method:"GET",
                        url: getBaseUrl() + "checkEmail",
                        data: {"email":value},
                        success: function (serverResponse) {
                            console.log("serverResponse = " + serverResponse);

                            if(serverResponse) {
                                showEmailError("Email already registered...");
                                valid = false;
                            }
                        }
                    })
                }
            }else {
                showEmailError("Email is not Valid");
                valid = false;
            }

            if (valid) {
                $("#email_error").hide();
            }

            $("#cand_reg_submit").attr("disabled",!valid);

            return valid;
        }

        function validatePassword() {
            var valid = true;
            var pas1 = $("#password").val().trim();
            var pas2 = $("#password_confirm").val().trim();

            if (pas1.localeCompare(pas2)!= 0) {
                $("#password_error").text("Passwords not equal");
                $("#password_error").show();
                valid = false;
            }

            if (pas1.length < 8 || pas2.length > 20) {
                $("#password_error").text("Password length should be min = 8 and max = 20");
                $("#password_error").show();
                valid = false;
            }

            if (valid) {
                $("#password_error").hide();
            }

            $("#cand_reg_submit").attr("disabled",!valid);

            return valid;
        }

        function validateForm(event) {
            var validFirstName = validateName($("#first_name").val(),"First name",$("#first_name_error"));
            var validateLastName = validateName($("#last_name").val(),"Last name",$("#last_name_error"));
            var validateEmail = validateEmail($("#email").val());
            var validatePass = validatePassword();

            var valid = validFirstName && validateLastName && validateEmail && validatePass;

            if (!valid) {
                event.preventDefault();
            } else {
                console.log('no error, submit form');
            }

            return valid;
        }


        // $("#first_name").on("blur",function() {
        //     console.log("sehife yuklemdi");
        //     validateName($("#first_name").val(),"First name",$("#first_name_error"));
        // });

        // $("#last_name").on("blur",function() {
        //     validateName($("#last_name").val(),"Last name",$("#last_name_error"));
        // });
        //
        // $("#email").on("blur",function() {
        //     validateEmail($("#email").val());
        // });

        // $("#password , #password_confirm").on("blur",function () {
        //     validatePassword();
        // });
        //
        // $("#candidate_reg_form").submit(function(event) {
        //     validateForm(event);
        // })


    });
</script>
<!--main js file end-->
</body>


</html>
