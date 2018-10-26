<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="container-fluid">

    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <h2>Withdraw Result</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${tarik.name}</td>
                    </tr>
                    <tr>
                        <td>Account Number</td>
                        <td>${tarik.accountNumber}</td>
                    </tr>
                    <tr>
                        <td>Saldo Sebelumnya</td>
                        <td>Rp. ${tarik.balance + withdraw.amount},-</td>
                    <tr>
                        <td>Jumlah Deposit</td>
                        <td>Rp. ${withdraw.amount},-</td>
                    </tr>
                    <tr>
                        <td>Saldo setelahnya</td>
                        <td>Rp. ${tarik.balance},-</td>
                    </tr>

                </table>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
