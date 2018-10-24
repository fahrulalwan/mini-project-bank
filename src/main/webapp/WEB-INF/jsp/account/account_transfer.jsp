<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
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
                <h2>Account Transfer</h2>
                <form:form method="POST" action="/miniapp/account/addTransfer">
                <table class="table table-hover">
                    <tr>
                        <td>Account Number :</td>
                        <td><form:input readonly="true" path="account_Number"/></td>
                    </tr>
                    <tr>
                        <td>Amount :</td>
                        <td><form:input path="amount"/></td>
                    </tr>
                    <tr>
                        <td>Rekening Tujuan :</td>
                        <td><form:input path="rekTujuan"/></td>
                    </tr>

                    <tr>
                        <td colspan="2"><input type="submit" value="Transfer"/></td>
                    </tr>
                </table>
            </div>
            </form:form>

        </div>
    </div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
