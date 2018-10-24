<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
            <div class="col-sm-4">
                <h2>Costumer Information</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${costumer.name}</td>
                    </tr>
                    <tr>
                        <td>Identity Number</td>
                        <td>??????????</td>
                    </tr>
                    <tr>
                        <td>Mother Name</td>
                        <td>???????</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>${costumer.alamat}</td>
                    </tr>
                    <tr>
                        <td>Birth Date</td>
                        <td>${costumer.ttl}</td>
                    </tr>

                </table>
                <div align="center">
                    <form:form method="POST" action="/miniapp/costumer/delete?id=${costumer.id}">
                        <input type="button" value="Update"
                               onclick="document.location='/miniapp/costumer/form_edit?id=${costumer.id}'"/>

                        <input type="submit" value="Delete"/>
                        <input type="button" value="addAccount"
                               onclick="document.location='/miniapp/account/form_add?id=${costumer.id}'"/>

                    </form:form>
                </div>
            </div>

            <div class="col-sm-2"></div>

            <div class="col-sm-4">
                <h2>Accounts</h2>
                <table class="table table-hover">
                    <c:forEach var="account" items="${costumer.daftaracc}">
                        <tr>
                            <td>Type</td>
                            <td>${account.tipe}</td>
                        </tr>
                        <tr>
                            <td>Balance</td>
                            <td>Rp. ${account.balance},-</td>
                        </tr>
                        <tr>
                            <td>Account Number</td>
                            <td>${account.norek}</td>
                        </tr>
                        <tr>
                            <td>--------------------------</td>
                            <td>--------------------------</td>
                        </tr>
                    </c:forEach>
                </table>

                <div align="center">
                    <form>
                        Pilih Rekening : &nbsp;
                        <label for="list"><select id="list" name="accountlist">
                            <c:forEach items="${costumer.daftaracc}" var="account">
                                <option id="a" value="${account.norek}">${account.norek}</option>
                            </c:forEach>
                        </select>
                        </label>

                        <br><br>

                        <input type="button" value="Deposit"
                               onclick="deposit()"/>
                        <input type="button" value="Withdraw"
                               onclick="withdraw()"/>
                        <input type="button" value="Transfer"
                               onclick="transfer()"/>

                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp" %>

<script>
    function deposit() {
        var e = document.getElementById("list");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/miniapp/account/formDeposit/" + strUser;
    }

    function withdraw() {
        var e = document.getElementById("list");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/miniapp/account/formWithdraw/" + strUser;
    }

    function transfer() {
        var e = document.getElementById("list");
        var strUser = e.options[e.selectedIndex].value;
        document.location.href = "/miniapp/account/formTransfer/" + strUser;
    }
</script>
</html>