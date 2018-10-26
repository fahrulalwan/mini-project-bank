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

    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Deposit an Account</h2>
                <form:form method="POST" action="/miniapp/account/addDeposit">
                    <table class="table table-hover">

                        <tr>
                            <td>Account Number :</td>
                            <td><form:input path="accountNumber" readonly="true"/></td>
                        </tr>

                        <tr>
                            <td>Amount :</td>
                            <td><form:input path="amount"/></td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center"><input type="submit" value="Deposit"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>
        </div>
    </div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
