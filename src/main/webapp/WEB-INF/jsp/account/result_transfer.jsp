<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mohammad.alwan
  Date: 08/10/2018
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Transfer Result</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${trf.name}</td>
                    </tr>
                    <tr>
                        <td>Nomor Rekening</td>
                        <td>${trf.norek}</td>
                    </tr>
                    <tr>
                        <td>Transfer Amount</td>
                        <td>Rp. ${transfer.amount},-</td>
                    </tr>
                    <tr>
                        <td>Pemilik Rekening Tujuan</td>
                        <td>${transfer.namaTujuan}</td>
                    </tr>
                    <tr>
                        <td>Rekening Tujuan</td>
                        <td>${transfer.rekTujuan}</td>
                    </tr>

                </table>
            </div>
        </div>

    </div>
    <%@ include file="../layout/footer.jsp" %>
</div>

</body>
</html>