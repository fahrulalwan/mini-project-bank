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
                <h2>Costumer Information</h2>
                <table class="table table-hover">
                    <tr>
                        <td>Name</td>
                        <td>${costumer.name}</td>
                    </tr>
                    <tr>
                        <td>Identity Number</td>
                        <td>????????</td>
                    </tr>
                    <tr>
                        <td>Mother Name</td>
                        <td>????????</td>
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
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
</html>