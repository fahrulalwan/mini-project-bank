<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp"%>
</head>
<body>
<%@include file="../layout/navbar.jsp"%>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Account Information</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${account.name}</td>
                    <tr>
                        <td>Type</td>
                        <td>${account.type}</td>
                    </tr>
                    <tr>
                        <td>Account Number</td>
                        <td>${account.account_Number}</td>
                    </tr>
                    <tr>
                        <td>Balance</td>
                        <td>Rp. ${account.balance},-</td>
                    </tr>
                </table>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>