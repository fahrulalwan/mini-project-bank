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
                <h2>Withdraw an Account</h2>
                <form:form method="POST" action="/miniapp/account/addWithdraw">
                    <table class="table table-hover">

                        <tr>
                            <td>Account Number :</td>
                            <td><form:input path="account_Number" readonly="true"/></td>
                        </tr>

                        <tr>
                            <td>Amount :</td>
                            <td><form:input path="amount"/></td>
                        </tr>

                        <tr>
                            <td colspan="2"><input type="submit" value="Withdraw"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>

        </div>
    </div>

</div>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>
