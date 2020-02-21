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
    <jsp:include page="../common/cssExtended.jsp"/>
    <link rel="stylesheet" type="text/css" href="../../../css/style_II.css" />
    <%--    <link rel="stylesheet" type="text/css" href="css/style_II.css" />--%>
    <link rel="stylesheet" type="text/css" href="../../../css/responsive2.css" />
    <%--    <link rel="stylesheet" type="text/css" href="css/responsive2.css" />--%>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>
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
                            <li><a href="#contentOne-2" class="active" data-toggle="tab">Add Candidate </a> </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">

                            <div  class="tab-pane fade in active register_left_form" id="contentOne-2">
                                <form:form modelAttribute="candidateForm" action="addCandidate" method="post">

                                    <div class="jp_regiter_top_heading">
                                        <p>Fields with * are mandatory </p>
                                    </div>
                                    <div class="row clearfix">
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="candidate.user.name"/>
                                            <form:input path="candidate.user.name" placeholder="Candidate Name*"/>
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:errors path="candidate.user.surname"/>
                                            <form:input path="candidate.user.surname"  placeholder="Candidate Surname*"/>
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:input path="candidate.user.email" placeholder="Email*"/>
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.user.phone" placeholder="Phone"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.user.mobile"  placeholder="Mobile"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            Birth Date:<form:input path="candidate.birthDate" type="date" name="field-name" value="" placeholder="Birth Date*"/>

                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:select path="candidate.address.country.id" >
                                                <c:forEach items="${countryList}" var="country">
                                                    <c:choose>
                                                        <c:when test="${candidate.address.country.id == country.id}">
                                                            <option value="${country.id}" selected>${country.name}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${country.id}">${country.name}</option>
                                                        </c:otherwise>
                                                    </c:choose>

                                                </c:forEach>
                                            </form:select>

                                        </div>
                                        <!--Form Group-->

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <form:select path="candidate.address.city" >
                                                <form:options items="${cityMap}"/>
                                            </form:select>

                                        </div>
                                        <!--Form Group-->


                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.profileImage"  placeholder="Profile Image"/>

                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.position"  placeholder="Position"/>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.salaryMin"  placeholder="Salary Min"/>
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.salaryMax"  placeholder="Salary Max"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.facebook" placeholder="Facebook Account"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.instagram"  placeholder="Instagram Account"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.twitter" placeholder="Twitter Account"/>

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.linkedin" placeholder="Linkedin Account "/>

                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.gitlab" placeholder="Gitlab Account "/>

                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <form:input path="candidate.github" placeholder="GitHub Account "/>

                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-12 col-sm-12 col-xs-12">

                                            <table id="jobHistory" class="table table-hover table-striped table-vcenter text-nowrap mb-0">
                                                <thead>
                                                    <th>Start Date</th>
                                                    <th>End Date</th>
                                                    <th>Company</th>
                                                    <th>Position</th>
                                                    <th>Info</th>
                                                    <th>Action</th>
                                                </thead>
                                               <tbody>

                                               </tbody>
                                            </table>

                                        </div>
                                        <!--Form Group-->




                                        <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <input type="submit" href="addCandidate"   class="btn btn-primary login_btn"/>
                                    </div>
                                </form:form>
                            </div>

                        </div>

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
<%--<script src="js/jquery.magnific-popup.js"></script>--%>

<%--&lt;%&ndash;<script src="../../../js/custom_II.js"></script>&ndash;%&gt;--%>
<%--<script src="js/custom_II.js"></script>--%>
<%--<!--main js file end-->--%>

<%--<script>--%>

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#jobHistory').DataTable( {
                "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
                "processing": true,
                "serverSide": true,
                "ajax": "/rest/candidate/${candidate.id}/job-history/",
                "columns": [
                    { data: 'startDate' },
                    { data: 'endDate' },
                    { data: 'company' },
                    { data: 'position' },
                    { data: 'info' },
                    { data: '<a href="#"></a>' }
                ]
            });

        });
    </script>

<%--    $(document).ready(function() {--%>

<%--        function getBaseUrl() {--%>
<%--            var re = new RegExp(/^.*\//);--%>
<%--            return re.exec(window.location.href);--%>
<%--        }--%>

<%--        function validateName(value,fieldsName,errorMsg) {--%>
<%--            var valid = true;--%>
<%--            var minLength = 2;--%>
<%--            var maxLength = 50;--%>

<%--            if(value.length <= minLength || value.length >= maxLength) {--%>
<%--                $(errorMsg).text(fieldsName + " minLength = " +minLength + " maxLength = " +maxLength);--%>
<%--                $(errorMsg).show();--%>
<%--                valid = false;--%>
<%--            }--%>

<%--            if (valid) {--%>
<%--                $(errorMsg).hide();--%>
<%--            }--%>

<%--            $("#cand_reg_submit").attr("disabled",!valid);--%>

<%--            return valid;--%>
<%--        }--%>

<%--        function isEmail(email) {--%>
<%--            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;--%>
<%--            return regex.test(email);--%>
<%--        }--%>
<%--        function showEmailError(ermsg) {--%>
<%--            $("#email_error").text(ermsg);--%>
<%--            $("#email_error").show();--%>
<%--        }--%>
<%--        function validateEmail(value) {--%>
<%--            var valid = true;--%>
<%--            var maxLength = 50;--%>

<%--            if(isEmail(value)) {--%>
<%--                if (value.length >= maxLength) {--%>
<%--                    showEmailError("Email maxLength =  " +maxLength);--%>
<%--                    valid = false;--%>
<%--                }else {--%>
<%--                    // check duplicate--%>

<%--                    $.ajax({--%>
<%--                        method:"GET",--%>
<%--                        url: getBaseUrl() + "checkEmail",--%>
<%--                        data: {"email":value},--%>
<%--                        success: function (serverResponse) {--%>
<%--                            console.log("serverResponse = " + serverResponse);--%>

<%--                            if(serverResponse) {--%>
<%--                                showEmailError("Email already registered...");--%>
<%--                                valid = false;--%>
<%--                            }--%>
<%--                        }--%>
<%--                    })--%>
<%--                }--%>
<%--            }else {--%>
<%--                showEmailError("Email is not Valid");--%>
<%--                valid = false;--%>
<%--            }--%>

<%--            if (valid) {--%>
<%--                $("#email_error").hide();--%>
<%--            }--%>

<%--            $("#cand_reg_submit").attr("disabled",!valid);--%>

<%--            return valid;--%>
<%--        }--%>

<%--        function validatePassword() {--%>
<%--            var valid = true;--%>
<%--            var pas1 = $("#password").val().trim();--%>
<%--            var pas2 = $("#password_confirm").val().trim();--%>

<%--            if (pas1.localeCompare(pas2)!= 0) {--%>
<%--                $("#password_error").text("Passwords not equal");--%>
<%--                $("#password_error").show();--%>
<%--                valid = false;--%>
<%--            }--%>

<%--            if (pas1.length < 8 || pas2.length > 20) {--%>
<%--                $("#password_error").text("Password length should be min = 8 and max = 20");--%>
<%--                $("#password_error").show();--%>
<%--                valid = false;--%>
<%--            }--%>

<%--            if (valid) {--%>
<%--                $("#password_error").hide();--%>
<%--            }--%>

<%--            $("#cand_reg_submit").attr("disabled",!valid);--%>

<%--            return valid;--%>
<%--        }--%>

<%--        function validateForm(event) {--%>
<%--            var validFirstName = validateName($("#first_name").val(),"First name",$("#first_name_error"));--%>
<%--            var validateLastName = validateName($("#last_name").val(),"Last name",$("#last_name_error"));--%>
<%--            var validateEmail = validateEmail($("#email").val());--%>
<%--            var validatePass = validatePassword();--%>

<%--            var valid = validFirstName && validateLastName && validateEmail && validatePass;--%>

<%--            if (!valid) {--%>
<%--                event.preventDefault();--%>
<%--            }--%>

<%--            return valid;--%>
<%--        }--%>


<%--        $("#first_name").on("blur",function() {--%>
<%--            console.log("sehife yuklemdi");--%>
<%--            validateName($("#first_name").val(),"First name",$("#first_name_error"));--%>

<%--        });--%>

<%--        $("#last_name").on("blur",function() {--%>
<%--            validateName($("#last_name").val(),"Last name",$("#last_name_error"));--%>
<%--        });--%>

<%--        $("#email").on("blur",function() {--%>
<%--            validateEmail($("#email").val());--%>
<%--        });--%>

<%--        $("#password , #password_confirm").on("blur",function () {--%>
<%--            validatePassword();--%>
<%--        });--%>

<%--        $("#candidate_reg_form").submit(function(event) {--%>
<%--            validateForm(event);--%>
<%--        })--%>


<%--    });--%>
<%--</script>--%>


</body>


</html>
