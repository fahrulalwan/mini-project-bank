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
                <div class="col-sm-5">

                    <h2 style="padding-left: 37px">Customer Information</h2>
                    <br>
                    <table>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Name</th>
                            <td style="padding-left: 50px">${costumer.name}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Identity Number</th>
                            <td style="padding-left: 50px">${costumer.id_Number}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Mother Name</th>
                            <td style="padding-left: 50px">${costumer.mother_Name}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Address</th>
                            <td style="padding-left: 50px">${costumer.address}</td>
                        </tr>
                        <tr class="table100-head">
                            <th class="column1" style="color: black; width: 200px">Birth Date</th>
                            <td style="padding-left: 50px">${costumer.birth_Date}</td>
                        </tr>
                    </table>
                    <br>
                    <div align="center">
                        <button class="bttn-unite bttn-sm bttn-danger" title="Visit Customer Info"
                                onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${costumer.id}'">
                            &nbsp; Visit Customer Info &nbsp;
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