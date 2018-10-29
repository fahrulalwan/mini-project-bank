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
        <div class="wrap-table100" style="  width: 1050px">
            <div class="table100">
                <div class="container">
                    <div class="row">
                        <div class="col-6">
                            <h2 class="column1">History</h2>
                            <br>
                        </div>
                        <div class="col-3"></div>
                        <div class="justify-content-around float-right">
                            <br>
                            <input type="text" id="myInput" onkeyup="myFunction()"
                                   placeholder="Search for Accounts.." class="align-self-end"
                                   title="Type a name"
                                   style="padding-top: 3px; padding-left: 10px; padding-bottom: 2px">
                        </div>
                    </div>
                </div>
                <table id="myTable">
                    <thead>
                    <tr class="table100-head">
                        <th class="column2">Account Number</th>
                        <th class="column3">Account Type</th>
                        <th class="column3">Amount</th>
                        <th class="column5">Activity</th>
                        <th class="column6">Account Destination</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="history" items="${list}">
                        <tr>
                            <td class="column2"><c:out value="${history.norek}"/></td>
                            <td class="column3"><c:out value="${history.tipe}"/></td>
                            <td class="column3"><c:out value="Rp. ${history.amount},-"/></td>
                            <td class="column5"><c:out value="${history.activity}"/></td>
                            <td class="column6"><c:out value="${history.rekTujuan}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
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
</body>
<%@ include file="../layout/footer.jsp" %>

</html>

