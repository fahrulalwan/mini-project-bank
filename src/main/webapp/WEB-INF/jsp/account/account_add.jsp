<%@ page import="java.util.Random" %>
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
                    <h2>Add an Account</h2>
                    <form:form id="myForm" method="POST" action="/miniapp/account/add"
                               onsubmit="return validateform()">
                        <table>

                            <tr>
                                <td><form:label path="cid">Costumerid</form:label></td>
                                <td><form:input type="number" path="cid"/></td>
                            </tr>
                            <tr>
                                <td><form:label path="name">Name</form:label></td>
                                <td><form:input path="name"/></td>
                            </tr>
                            <tr>
                                <td><form:label path="type">Type</form:label></td>
                                <td>
                                    <form:select path="type">
                                        <form:option value="Checking">Checking</form:option>
                                        <form:option value="Savings">Savings</form:option>
                                        <form:option value="Time Deposit">Time Deposit</form:option>
                                    </form:select>
                                </td>
                            </tr>
                            <tr>
                                <td><form:label path="account_Number">Account Number</form:label></td>
                                <%
                                    Random rand = new Random();
                                    int randomnumber = rand.nextInt(900000000) + 10000000;
                                %>
                                <td><form:input id="demo" name="ticketid" value="<%=randomnumber%>" readonly="true"
                                                type="number" minlength="10" maxlength="10" path="account_Number"/></td>

                            </tr>
                            <tr>
                                <td><form:label path="balance">Balance</form:label></td>
                                <td><form:input path="balance"/></td>
                            </tr>
                        </table>
                        <br>
                        <button type="submit" value="Submit" class="bttn-unite bttn-sm bttn-danger">Submit</button>
                        &nbsp;
                        <button type="button" value="Reset" class="bttn-unite bttn-sm bttn-danger" onclick="resetform()">Reset</button>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function validateform() {
        var cid = document.add.cid.value;
        var id_Number = document.add.account_Number.value;

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