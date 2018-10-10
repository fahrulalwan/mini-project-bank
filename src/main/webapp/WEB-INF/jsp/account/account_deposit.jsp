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
</head>
<body>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">
        <%@ include file="../layout/menubar.jsp" %>

        <div id="main">
            <h2>Deposit an Account</h2>
            <form:form method="POST" action="/miniapp/account/addDeposit">
                <table>
                    <tr>
                        <c:forEach items="${costumer.daftaracc}" var="account">
                            <td><form:label path="norek">No. Rekening</form:label></td>
                            <td><form:input path="norek" readonly="true" value="${deposit.norek}"/>${deposit.norek}</td>
                        </c:forEach>
                    </tr>
                    <tr>
                        <td><form:label path="amount">Amount</form:label></td>
                        <td><form:input path="amount"/></td>
                    </tr>

                    <tr>
                        <td colspan="2"><input type="submit" value="Deposit"/></td>
                    </tr>
                </table>
            </form:form>

        </div>
        <%@ include file="../layout/footer.jsp" %>
    </div>

</body>
</html>
