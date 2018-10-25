<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="container-fluid">

    <div class="wrapper">

        <div id="main">
            <h2>Add a Costumer</h2>
            <form:form method="POST" action="/miniapp/costumer/edit">
                <table>
                    <tr>
                        <td><form:label path="id">id</form:label></td>
                        <td><form:input readonly="true" path="id"/></td>
                    </tr>
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
                        <td><form:label path="birth_Date">Birth Date</form:label></td>
                        <td><form:input path="birth_Date"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit"/></td>
                    </tr>
                </table>
            </form:form>

        </div>
    </div>

</body>
<%@ include file="../layout/footer.jsp" %>

</html>
