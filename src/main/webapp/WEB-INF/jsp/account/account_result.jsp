<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <h2 class="column1">Account Information</h2>

                <br>

                <table>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Name</th>
                        <td>${account.name}</td>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Type</th>
                        <td>${account.type}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Account Number</th>
                        <td>${account.account_Number}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Balance</th>
                        <td>Rp. ${account.balance},-</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>