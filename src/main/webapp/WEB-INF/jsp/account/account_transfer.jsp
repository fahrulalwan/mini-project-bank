<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="wrap-table100" style="width: 1050px">
            <div class="table100">
                <div class="col-sm-6">
                    <h2 style="padding-left: 37px">Account Deposit</h2>
                    <br>
                    <form:form method="POST" action="/miniapp/account/addTransfer" onsubmit="verifyTransfer()">
                        <table>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="accountNumber">Account Number</form:label>
                                </th>
                                <td>
                                    <form:input readonly="true" path="accountNumber"
                                                cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="amount">Amount</form:label>
                                </th>
                                <td><form:input path="amount" placeholder="Rp."
                                                cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="rekTujuan">Account Destination</form:label>
                                </th>
                                <td><form:input path="rekTujuan" cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px"/></td>
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
    function resetform() {
        document.getElementById("myForm").reset();
    }

    function verifyTransfer() {
        var r = confirm("Are you sure want to transfer this Account?");
        return r === true;
    }
</script>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>
