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

        <div id="main">
            <h2>Costumer Information</h2>
            <table style="width: 20%">
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

            <form:form method="POST" action="/miniapp/costumer/delete?id=${costumer.id}">
                <input type="submit" value="Delete"/>
           
            <input type="button" value="Update"
                   onclick="document.location='/miniapp/costumer/form_edit?id=${costumer.id}'"/>
 			</form:form>

            <h2 align="top">Daftar Account</h2>
            <table style="width: 60%">
                <tr>
                    <td>
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
                                <td>------------------------</td>
                                <td>----------------------</td>
                            </tr>
                        </c:forEach>
                    </td>
                </tr>
            </table>


            <div>
                <form>
                    Pilih Rekening : &nbsp;
                    <select name="accountlist">
                        <c:forEach items="${list}" var="account">
                            <option id="a" value="${account.norek}">${account.norek}</option>
                        </c:forEach>
                    </select>

                    <br><br>

                    <input type="button" value="Deposit"
                           onclick="document.location='/miniapp/account/formDeposit?id=${account.norek}'"/>
                    <input type="button" value="Withdraw"
                           onclick="document.location='/miniapp/account/formWithdraw?id=${account.norek}'"/>
                    <input type="button" value="Transfer"
                           onclick="document.location='/miniapp/account/formTransfer?id=${account.norek}'"/>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="../layout/footer.jsp" %>
</div>

</body>
</html>