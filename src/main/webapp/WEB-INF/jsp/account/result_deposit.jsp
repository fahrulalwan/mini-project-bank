<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <h2>Deposit Result</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${simpen.name}</td>
                    </tr>
                    <tr>
                        <td>Account Number</td>
                        <td>${simpen.account_Number}</td>
                    </tr>
                    <tr>
                        <td>Saldo Sebelumnya</td>
                        <td>Rp. ${simpen.balance - deposit.amount},-</td>
                    <tr>
                        <td>Jumlah Deposit</td>
                        <td>Rp. ${deposit.amount},-</td>
                    </tr>
                    <tr>
                        <td>Saldo setelahnya</td>
                        <td>Rp. ${simpen.balance},-</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
