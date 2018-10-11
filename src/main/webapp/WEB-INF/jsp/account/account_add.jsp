<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/default.css" />" rel="stylesheet"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">
        <%@ include file="../layout/menubar.jsp" %>

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Add an Account</h2>
                <form:form method="POST" action="/miniapp/account/add">
                    <table class="table table-hover">
                        <tr>
                            <td><form:label path="id">id</form:label></td>
                            <td><form:input path="id"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="cid">Costumerid</form:label></td>
                            <td><form:input path="cid"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="name">Name</form:label></td>
                            <td><form:input path="name"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="tipe">Type</form:label></td>
                            <td><form:input path="tipe"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="norek">No Rekening</form:label></td>
                            <td><form:input path="norek"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="balance">Balance</form:label></td>
                            <td><form:input path="balance"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>
        </div>
        <%@ include file="../layout/footer.jsp" %>
    </div>

</body>
</html>