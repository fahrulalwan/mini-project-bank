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
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Account Information</h2>
                <table class="table table-hover">
                    <tr>
                        <td>id</td>
                        <td>${account.id}</td>
                    </tr>
                    <tr>
                        <td>Cid</td>
                        <td>${account.cid}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>${account.name}</td>
                    <tr>
                        <td>Tipe</td>
                        <td>${account.tipe}</td>
                    </tr>
                    <tr>
                        <td>NoRek</td>
                        <td>${account.norek}</td>
                    </tr>
                    <tr>
                        <td>Balance</td>
                        <td>${account.balance}</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
    <%@ include file="../layout/footer.jsp" %>
</div>

</body>
</html>