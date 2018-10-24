<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div id="main">

            <div class="row">
                <div class="col-sm-1"></div>

                <div class="col-sm-10">
                    <h2>List Accounts</h2>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Account Number</th>
                            <th>Type</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="account" items="${list}">
                            <tr>
                                <td><c:out value="${account.name}"/></td>
                                <td><c:out value="${account.account_Number}"/></td>
                                <td><c:out value="${account.tipe}"/></td>
                                <td><button onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${account.cid}'"/>Visit</button></td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>

