<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100" style="width: 1000px">
            <div class="table100">
                <h2>Account Lists</h2>
                <br>
                <table>
                    <thead>
                    <tr class="table100-head">
                        <th class="column1">Name</th>
                        <th class="column2">Account Number</th>
                        <th class="column3">Type</th>
                        <th class="column5"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="account" items="${list}">
                        <tr>
                            <td class="column1"><c:out value="${account.name}"/></td>
                            <td class="column2"><c:out value="${account.account_Number}"/></td>
                            <td class="column3"><c:out value="${account.type}"/></td>
                            <td class="column5">
                                <button class="bttn-unite bttn-sm bttn-danger" title="Visit Customer Info"
                                        onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${account.cid}'">
                                    Visit
                                </button>
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>

