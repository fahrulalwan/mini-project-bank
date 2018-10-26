<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100" style="width: 1050px">
            <div class="table100">
                <div class="container">
                    <div class="row">
                        <div class="col-6">
                            <h2 style="padding-left: 15px">Customer Lists</h2>
                            <br>
                        </div>
                        <div class="col-3"></div>
                        <div class="justify-content-around float-right">
                            <br>
                            <input type="text" id="myInput" onkeyup="myFunction()"
                                   placeholder="Search for Accounts.." class="align-self-end"
                                   title="Type a name" style="padding-top: 3px; padding-left: 10px; padding-bottom: 2px">
                        </div>
                    </div>
                </div>
                <table id="myTable">
                    <thead>
                    <tr class="table100-head">
                        <th class="column1">Name</th>
                        <th class="column2">Identity Number</th>
                        <th class="column3">Mother Name</th>
                        <th class="column2">Address</th>
                        <th class="column5">Birth Date</th>
                        <th class="column2"></th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="costumer" items="${list}">
                        <tr>

                            <td class="column1"><c:out value="${costumer.name}"/></td>
                            <td class="column2"><c:out value="${costumer.id_Number}"/></td>
                            <td class="column3"><c:out value="${costumer.mother_Name}"/></td>
                            <td class="column2"><c:out value="${costumer.address}"/></td>
                            <td class="column5"><c:out value="${costumer.birth_Date}"/></td>
                            <td class="column2">
                                <button class="bttn-unite bttn-sm bttn-danger"
                                        onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${costumer.id}'"/>
                                Visit
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
<%@ include file="../layout/footer.jsp" %>
<script>
    function myFunction() {
        var input, filter, table, tr, td, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
</html>

