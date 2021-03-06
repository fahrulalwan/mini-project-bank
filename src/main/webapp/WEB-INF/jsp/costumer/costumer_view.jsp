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

    <div class="container-customer">

        <div class="col-sm-6 make-me-sticky">
            <h2 style="padding-left: 37px">Costumer Information</h2>
            <p id="ilang">${costumer.id}</p>
            <table>
                <tr class="table100-head">
                    <th class="column1" style="color: black; padding-right: 50px">Name</th>
                    <td class="column4">${costumer.name}</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1" style="color: black; padding-right: 50px">Identity Number</th>
                    <td class="column4">${costumer.id_Number}</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1" style="color: black; padding-right: 50px">Mother Name</th>
                    <td class="column4">${costumer.mother_Name}</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1" style="color: black; padding-right: 50px">Address</th>
                    <td class="column4">${costumer.address}</td>
                </tr>
                <tr class="table100-head">
                    <th class="column1" style="color: black; padding-right: 50px">Birth Date</th>
                    <td class="column4">${costumer.birth_Date}</td>
                </tr>

            </table>
            <br>

<sec:authorize access="hasRole('ADMIN')">
            <div align="center">
                <form:form method="POST" action="/miniapp/costumer/delete?id=${costumer.id}" onsubmit="return verifyDelete()">
                    <button type="button" class="bttn-unite bttn-sm bttn-danger" value="Update"
                            onclick="document.location='/miniapp/costumer/form_edit?id=${costumer.id}'">Update
                    </button>
                    &nbsp;
                    <button type="submit" class="bttn-unite bttn-sm bttn-danger" value="Delete"
                            onclick="verifyDelete()">Delete
                    </button>
                    &nbsp;
                    <button type="button" class="bttn-unite bttn-sm bttn-danger" value="addAccount"
                            onclick="addAccount(${costumer.id})">Add Account
                    </button>

                </form:form>
            </div>
</sec:authorize>
        </div>

        <div class="col-sm-1" style="left: 340px"></div>

        <div class="col-sm-4" style="top: -10px; left: 330px">

            <c:set var="total" value="${0}"/>
            <c:forEach var="account" items="${costumer.daftaracc}">
                <c:set var="total" value="${total + 1}"/>
            </c:forEach>

            <br>

            <c:if test="${total > 0}">
                <h2 style="padding-left: 37px">Accounts</h2>
                <br>
                <table>
                    <c:forEach var="account" items="${costumer.daftaracc}">

                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Type</th>
                            <td class="column4">${account.type}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Balance</th>
                            <td class="column4">Rp. ${account.balance},-</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; padding-right: 50px">Account Number</th>
                            <td class="column4">${account.accountNumber}</td>
                        </tr>
                        <tr>
                            <th></th>
                            <td></td>
                        </tr>
                    </c:forEach>
                </table>
                <br>
                <br>
                <div align="center">
                    <form style="color:#E9DCCD;">
                        Pilih Rekening : &nbsp;
                        <label for="list"><select id="list" name="accountlist">
                            <c:forEach items="${costumer.daftaracc}" var="account">
                                <option id="a" value="${account.accountNumber}">${account.accountNumber}</option>
                            </c:forEach>
                        </select>
                        </label>

                        <br><br>
                        <sec:authorize access="hasRole('ADMIN')">
                        <button class="bttn-unite bttn-sm bttn-danger" type="button" value="Deposit"
                                onclick="deposit()">Deposit
                        </button> &nbsp;
                        <button class="bttn-unite bttn-sm bttn-danger" type="button" value="Withdraw"
                                onclick="withdraw()">Withdraw
                        </button> &nbsp;
                        </sec:authorize>

                        <sec:authorize access="hasRole('USER')">
                        <button class="bttn-unite bttn-sm bttn-danger" type="button" value="Transfer"
                                onclick="transfer()">Transfer
                        </button>
                        </sec:authorize>

                    </form>
                </div>
            </c:if>
            <c:if test="${total < 1}">
                <h1 align="center">Currently,<br><br>you have no Account.<br> : (</h1>
            </c:if>

        </div>

    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp" %>

<script type="text/javascript" charset="utf-8">
    document.getElementById("ilang").style.visibility = "hidden";

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

    function addAccount(accountId) {
        document.location.href = "/miniapp/account/form_add/" + accountId;
    }

    function verifyDelete() {
        var r = confirm("Are you sure want to delete?");
        return r === true;
    }
</script>
<style>
    h1 {
        font-family: 'Open Sans';
        font-weight: 300;
        text-align: center;
        color: #36384C !important;
    }
</style>
</html>