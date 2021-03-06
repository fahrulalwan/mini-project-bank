<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div class="col-sm-5">
                    <h2 style="padding-left: 37px">Account Information</h2>
                    <br>

                    <table>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Name</th>
                            <td style="padding-left: 50px">${simpen.name}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Account Number</th>
                            <td style="padding-left: 50px">${simpen.accountNumber}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Saldo Sebelumnya</th>
                            <td style="padding-left: 50px">Rp. ${simpen.balance - deposit.amount},-</td>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Jumlah Deposit</th>
                            <td style="padding-left: 50px">Rp. ${deposit.amount},-</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Saldo setelahnya</th>
                            <td style="padding-left: 50px">Rp. ${simpen.balance},-</td>
                        </tr>
                    </table>
                    <br>
                    <div align="center">
                        <button class="bttn-unite bttn-sm bttn-danger" title="Back"
                                onclick="window.location.href='/miniapp/costumer/list'">
                            &nbsp;Customer List&nbsp;
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>
