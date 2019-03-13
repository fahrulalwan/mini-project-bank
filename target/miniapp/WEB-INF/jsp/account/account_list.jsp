<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100" style="width: 850px">
            <div class="table100">
                <div class="container">
                    <div class="row">
                        <div class="col-6">
                            <h2 style="padding-left: 15px">Account Lists</h2>
                            <br>
                        </div>
                        <div class="col-2"></div>
                        <div class="justify-content-around float-right" style="padding-left: 40px">
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
                        <th class="column1">Name</th>
                        <th class="column2">Account Number</th>
                        <th class="column3">Type</th>
                        <th class="column2"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="account" items="${list}">
                        <tr>
                            <td class="column1"><c:out value="${account.name}"/></td>
                            <td class="column2"><c:out value="${account.accountNumber}"/></td>
                            <td class="column3"><c:out value="${account.type}"/></td>
                            <td class="column2">
                                <button class="bttn-unite bttn-sm bttn-danger" title="Visit Customer Info"
                                        onclick="window.location.href='http://localhost:8080/miniapp/costumer/view?id=${account.cid}'">
                                    &nbsp; Visit &nbsp;
                                </button>
                            </td>

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

