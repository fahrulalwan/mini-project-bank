<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp"%>
</head>
<body>
<%@include file="../layout/navbar.jsp"%>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">
        <div id="main">
            <div class="row">
                <div class="col-sm-1"></div>

                <div class="col-sm-10">
                    <h2>List Costumer</h2>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Identity Number</th>
                            <th>Mother Name</th>
                            <th>Address</th>
                            <th>Birth Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="costumer" items="${list}">
                            <tr>

                                <td><a href="http://localhost:8080/miniapp/costumer/view?id=${costumer.id}">
                                    <c:out value="${costumer.id}"/></a></td>
                                <td><c:out value="${costumer.name}"/></td>
                                <td><c:out value="${costumer.name}?????"/></td>
                                <td><c:out value="${costumer.name}?????"/></td>
                                <td><c:out value="${costumer.alamat}"/></td>
                                <td><c:out value="${costumer.ttl}"/></td>

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

