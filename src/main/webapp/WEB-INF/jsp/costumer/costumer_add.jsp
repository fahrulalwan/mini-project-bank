<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Add a Customer</h2>
                <br>
                <form:form method="POST" action="/miniapp/costumer/add">
                <table class="table table-hover">
                    <tr>
                        <td><form:label path="name">Name</form:label></td>
                        <td><form:input path="name"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="id_Number">Identity Number</form:label></td>
                        <td><form:input path="id_Number"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="mother_Name">Mother Name</form:label></td>
                        <td><form:input path="mother_Name"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="address">Address</form:label></td>
                        <td><form:input path="address"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="birth_Date">Birth_Date</form:label></td>
                        <td><form:input path="birth_Date"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit"/></td>
                    </tr>
                </table>
            </div>
            </form:form>

        </div>
    </div>

</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
