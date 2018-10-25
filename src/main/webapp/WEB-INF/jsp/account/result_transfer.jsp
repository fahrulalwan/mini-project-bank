<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp"%>
</head>
<body>
<%@include file="../layout/navbar.jsp"%>

<div class="container-fluid">

    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Transfer Result</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${trf.name}</td>
                    </tr>
                    <tr>
                        <td>Account Number</td>
                        <td>${trf.account_Number}</td>
                    </tr>
                    <tr>
                        <td>Transfer Amount</td>
                        <td>Rp. ${transfer.amount},-</td>
                    </tr>
                    <tr>
                        <td>Rekening Tujuan</td>
                        <td>${transfer.rekTujuan}</td>
                    </tr>

                </table>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>
