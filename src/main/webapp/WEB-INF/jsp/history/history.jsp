<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <div class="row">
                <div class="col-sm-1"></div>

                <div class="col-sm-10">
                    <h2>History</h2>
                    <table id="tabel" class="table table-hover">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>No Rekening</th>
                            <th>Tipe</th>
                            <th>Amount</th>
                            <th>Activity</th>
                            <th>Rek Tujuan</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="history" items="${list}">
                            <tr>

                                <td><c:out value="${history.hid}"/></td>
                                <td><c:out value="${history.norek}"/></td>
                                <td><c:out value="${history.tipe}"/></td>
                                <td><c:out value="Rp. ${history.amount},-"/></td>
                                <td><c:out value="${history.activity}"/></td>
                                <td><c:out value="${history.rekTujuan}"/></td>

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

