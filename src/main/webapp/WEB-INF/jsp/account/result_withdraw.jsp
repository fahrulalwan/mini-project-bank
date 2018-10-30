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
                            <td style="padding-left: 50px">${tarik.name}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Account Number</th>
                            <td style="padding-left: 50px">${tarik.accountNumber}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Saldo Sebelumnya</th>
                            <td style="padding-left: 50px">Rp. ${tarik.balance + withdraw.amount},-</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Jumlah Deposit</th>
                            <td style="padding-left: 50px">Rp. ${withdraw.amount},-</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Saldo setelahnya</th>
                            <td style="padding-left: 50px">Rp. ${tarik.balance},-</td>
                        </tr>
                    </table>
                    <br>
                    <div align="center">
                        <button class="bttn-unite bttn-sm bttn-danger" title="Visit Customer Info"
                                onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${costumer.cid}'">
                            &nbsp; Back &nbsp;
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
