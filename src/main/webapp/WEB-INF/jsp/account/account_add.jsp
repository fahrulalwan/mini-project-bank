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
        <div class="wrap-table100" style="width: 1000px">
            <div class="table100">
                <div class="col-sm-5">
                    <h2 style="padding-left: 37px">Add an Account</h2>
                    <br>
                    <form:form id="myForm" method="POST" action="/miniapp/account/add">
                        <form:input type="hidden" path="cid" readonly="true"/>
                        <table>
                            <tr>
                                <th><form:label cssClass="column1" path="name">Name</form:label></th>
                                <td><form:input cssClass="column4 form-control form-control-sm" path="name"
                                                readonly="true"/></td>
                            </tr>
                            <tr>
                                <td><form:label cssClass="column1" path="type">Type</form:label></td>
                                <td>
                                    <form:select cssClass="column4 form-control form-control-sm" path="type">
                                        <form:option value="Checking">Checking</form:option>
                                        <form:option value="Savings">Savings</form:option>
                                        <form:option value="Time Deposit">Time Deposit</form:option>
                                    </form:select>
                                </td>
                            </tr>

                            <tr>
                                <td><form:label cssClass="column1" path="balance">Balance</form:label></td>
                                <td><form:input cssClass="column4 form-control form-control-sm" path="balance"/></td>
                            </tr>
                        </table>
                        <br>
                        <div align="center">
                            <button type="submit" value="Submit" class="bttn-unite bttn-sm bttn-danger">Submit</button>
                            &nbsp;
                            <button type="button" value="Reset" class="bttn-unite bttn-sm bttn-danger"
                                    onclick="resetform()">Reset
                            </button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function validateform() {
        if (cid == null || cid === "") {
            alert("Costumer id Can't Be Blank");
            return false;
        } else if (id_Number == null || id_Number === "") {
            alert("Please input Account Number");
            return false;
        }
    }

    function resetform() {
        document.getElementById("myForm").reset();
    }
</script>
</body>
<%@ include file="../layout/footer.jsp" %>

</html>