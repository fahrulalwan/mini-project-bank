<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="/resources/css/default.css" />" rel="stylesheet"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <title>BankApp</title>
</head>
<body>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">
        <%@ include file="../layout/menubar.jsp" %>

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Deposit an Account</h2>
                <form:form method="POST" action="/miniapp/account/addDeposit">
                    <table class="table table-hover">

                        <tr>
                            <td>No Rekening :</td>
                            <td><form:input path="norek" readonly="true"/></td>
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
        <%@ include file="../layout/footer.jsp" %>
    </div>

</body>
</html>
