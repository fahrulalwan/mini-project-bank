<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

        <div id="main" class="row">
            <div class="col-sm-4">
                <h2>Costumer Information</h2>
                <table class="table table-hover">
                    <tr>
                        <td>ID</td>
                        <td>${costumer.id}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>${costumer.name}</td>
                    </tr>
                    <tr>
                        <td>Alamat</td>
                        <td>${costumer.alamat}</td>
                    </tr>
                    <tr>
                        <td>TTL</td>
                        <td>${costumer.ttl}</td>
                    </tr>

                </table>
                <div align="center">
                    <form:form method="POST" action="/miniapp/costumer/delete?id=${costumer.id}">
                        <input type="button" value="Update"
                               onclick="document.location='/miniapp/costumer/form_edit?id=${costumer.id}'"/>

                        <input type="submit" value="Delete"/>

                    </form:form>
                </div>
            </div>

            <div class="col-sm-3"></div>

            <div class="col-sm-4">
                <h2>Daftar Account</h2>
                <table class="table table-hover">
                    <c:forEach var="account" items="${costumer.daftaracc}">
                        <tr>
                            <td>Type</td>
                            <td>${account.tipe}</td>
                        </tr>
                        <tr>
                            <td>Balance</td>
                            <td>${account.balance}</td>
                        </tr>
                        <tr>
                            <td>Nomor Rekening</td>
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
                        <select name="accountlist">
                            <c:forEach items="${costumer.daftaracc}" var="account">
                                <option id="a" value="${account.norek}">${account.norek}</option>
                            </c:forEach>
                        </select>

                        <br><br>

                        <input type="button" value="Deposit"
                               onclick="document.location='/miniapp/account/formDeposit?id=${'#a'}'"/>
                        <input type="button" value="Withdraw"
                               onclick="document.location='/miniapp/account/formWithdraw?id=${'#a'}'"/>
                        <input type="button" value="Transfer"
                               onclick="document.location='/miniapp/account/formTransfer?id=${'#a'}'"/>
                </div>
                </form>
            </div>

        </div>
        <%@ include file="../layout/footer.jsp" %>
    </div>

</body>
</html>