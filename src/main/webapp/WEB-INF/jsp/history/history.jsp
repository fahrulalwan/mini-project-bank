<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100">
                <h2 class="column1">History</h2>
                <br>
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.."
                       title="Type a name" style="padding-left: 10px;">
                <br>
                <table>
                    <thead>
                    <tr class="table100-head">
                        <th class="column2">Account Number</th>
                        <th class="column3">Account Type</th>
                        <th class="column3">Amount</th>
                        <th class="column5">Activity</th>
                        <th class="column6">Account Destination</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="history" items="${list}">
                        <tr>
                            <td class="column2"><c:out value="${history.norek}"/></td>
                            <td class="column3"><c:out value="${history.tipe}"/></td>
                            <td class="column3"><c:out value="Rp. ${history.amount},-"/></td>
                            <td class="column5"><c:out value="${history.activity}"/></td>
                            <td class="column6"><c:out value="${history.rekTujuan}"/></td>
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

