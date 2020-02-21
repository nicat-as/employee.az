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
    <jsp:include page="../../web/common/meta.jsp"/>
    <!--srart theme style -->
    <jsp:include page="../common/cssextended.jsp"/>
        <link rel="stylesheet" type="text/css" href="../../../css/style_II.css" />
<%--    <link rel="stylesheet" type="text/css" href="css/style_II.css" />--%>
        <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css" />
<%--    <link rel="stylesheet" type="text/css" href="css/responsive2.css" />--%>
</head>

<body>
<!-- preloader Start -->

<!-- Top Scroll End -->



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
                            <li><a href="#contentOne-2" class="active" data-toggle="tab">company account <br> <span>We are hiring Employees</span></a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <div  class="tab-pane fade in active register_left_form" id="contentOne-2">
                                <form:form modelAttribute="companyRegistrationForm" action="addCompany" method="post">

                                <div class="jp_regiter_top_heading">
                                    <p>Fields with * are mandetory </p>
                                </div>
                                <div class="row clearfix">
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Company Name*</p>
                                        <form:errors path="organizationName" cssStyle="color: red"/>
                                        <form:input path="organizationName"  />
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Industry Field*</p>
                                        <form:errors path="industryName"/>
                                        <form:select path="industryName"  name="field-name"  >
                                            <c:forEach items="${industryList}"  var="item" >
                                            <form:option value="${item}">${item}</form:option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Head Office*</p>
                                        <form:errors path="headOffice" cssStyle="color: red"/>
                                        <form:input path="headOffice" type="text" name="field-name" />
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>About*</p>
                                        <form:errors path="about" cssStyle="color: red"/>
                                        <form:input path="about" type="text" name="field-name"  />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Create Date (year)</p>
                                        <form:errors path="createDate" cssStyle="color: red"/>
                                        <form:input path="createDate" type="text" name="field-name"   />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Num of Employee</p>
                                        <form:errors path="employeeNumber" cssStyle="color: red"/>
                                        <form:input path="employeeNumber" type="number" name="field-name"  />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Rating</p>
                                        <form:errors path="rating" cssStyle="color: red"/>
                                        <form:input path="rating" type="number" min="0" max="10" name="field-name"  />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Annual Revenue</p>
                                        <form:errors path="annualRenvenue" cssStyle="color: red"/>
                                        <form:input path="annualRenvenue" type="number" name="field-name" value="" />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>website</p>
                                        <form:errors path="website" cssStyle="color: red"/>
                                        <form:input path="website" type="text" name="field-name"   />

                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Phone</p>
                                        <form:errors path="phone" cssStyle="color: red"/>
                                        <form:input path="phone" type="text" name="field-name"  />
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Email</p>
                                        <form:errors path="email" cssStyle="color: red"/>
                                        <form:input path="email" type="email" name="field-name"  />
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Mobile</p>
                                        <form:errors path="mobile" cssStyle="color: red"/>
                                        <form:input path="mobile" type="text" name="field-name"  />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Facebook Account</p>
                                        <form:errors path="facebook" cssStyle="color: red"/>
                                        <form:input path="facebook" type="text" name="field-name"  />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Instagram Account</p>
                                        <form:errors path="instagram" cssStyle="color: red"/>
                                        <form:input path="instagram" />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Twitter Account</p>
                                        <form:errors path="twitter" cssStyle="color: red"/>
                                        <form:input path="twitter" />

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Linkedin Account </p>
                                        <form:errors path="linkedin" cssStyle="color: red"/>
                                        <form:input path="linkedin"  />

                                    </div>

                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <p>Global*</p>
                                        <form:errors path="global" cssStyle="color: red"/>
                                        Is global  ?  * : <br/> <form:radiobutton path="global" value="true"/>YES
                                                                <form:radiobutton path="global" value="false"/>NO

                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <form:input path="id" cssStyle="display: none" />
                                    </div>


                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="check-box text-center">
                                            <input type="checkbox" name="shipping-option" id="account-option_2"> &ensp;
                                            <label for="account-option_2">I agreed to the <a href="#" class="check_box_anchr">Terms and Conditions</a> governing the use of jobportal</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                    <input type="submit" href="addCompany"  value="  register " class="btn btn-primary login_btn"/>
                                </div>
                                    </form:form>
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

<!--main js file start-->
<<jsp:include page="../../web/common/js.jsp"/>
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


        function validateForm(event) {
            var validFirstName = validateName($("#first_name").val(),"First name",$("#first_name_error"));
            var validateLastName = validateName($("#last_name").val(),"Last name",$("#last_name_error"));
            var validateEmail = validateEmail($("#email").val());
            var validatePass = validatePassword();

            var valid = validFirstName && validateLastName && validateEmail && validatePass;

            if (!valid) {
                event.preventDefault();
            }

            return valid;
        }


        $("#first_name").on("blur",function() {
            console.log("sehife yuklemdi");
            validateName($("#first_name").val(),"First name",$("#first_name_error"));

        });

        $("#last_name").on("blur",function() {
            validateName($("#last_name").val(),"Last name",$("#last_name_error"));
        });

        $("#email").on("blur",function() {
            validateEmail($("#email").val());
        });


        $("#candidate_reg_form").submit(function(event) {
            validateForm(event);
        })


    });
</script>
</body>


</html>
