<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div id="main">

            <div class="row">
                <div class="col-sm-1"></div>

                <div class="col-sm-10">
                    <h2>List Accounts</h2>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>Account ID</th>
                            <th>Name</th>
                            <th>No Rekening</th>
                            <th>Tipe Rekening</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="account" items="${list}">
                            <tr>

                                <td><a href="/miniapp/costumer/view?id=${account.cid}">
                                    <c:out value="${account.id}"/></a></td>
                                <td><c:out value="${account.name}"/></td>
                                <td><c:out value="${account.norek}"/></td>
                                <td><c:out value="${account.tipe}"/></td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <%@ include file="../layout/footer.jsp" %>
</div>

</body>
</html>

