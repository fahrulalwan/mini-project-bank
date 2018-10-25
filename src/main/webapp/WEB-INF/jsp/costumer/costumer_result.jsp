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
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100">
                <h2 class="column1">Account Information</h2>

                <br>

                <table>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Name</th>
                        <td>${costumer.name}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Identity Number</th>
                        <td>${costumer.id_Number}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Mother Name</th>
                        <td>${costumer.mother_Name}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Address</th>
                        <td>${costumer.address}</td>
                    </tr>
                    <tr class="table100-head">
                        <th class="column1" style="color: black; padding-right: 50px">Birth Date</th>
                        <td>${costumer.birth_Date}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>