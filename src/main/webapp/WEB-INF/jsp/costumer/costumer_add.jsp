<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/gijgo@1.9.10/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="limiter">

    <div class="container-table100">
        <div class="wrap-table100" style="width: 1000px">
            <div class="table100">
                <div class="col-sm-5">
                    <h2>Add an Customer</h2>
                    <form:form method="POST" action="/miniapp/costumer/add">
                    <table>
                        <tr>
                            <td><form:label path="name">Name</form:label></td>
                            <td><form:input path="name"/></td>

                        </tr>
                        <tr>
                            <td><form:label path="id_Number">Identity Number</form:label></td>
                            <td><form:input type="number" minlength="10" maxlength="10" path="id_Number"
                                            required="required"/></td>
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
                            <td><form:input type="date" width="276" path="birth_Date"/></td>
                        </tr>
                    </table>
                    <br>
                    <button type="submit" value="Submit" class="bttn-unite bttn-sm bttn-danger">Submit</button>
                </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
