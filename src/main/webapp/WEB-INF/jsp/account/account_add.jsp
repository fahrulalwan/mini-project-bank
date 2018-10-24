<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../layout/meta.jsp" %>
</head>
<body>
<%@include file="../layout/navbar.jsp" %>

<div class="container-fluid">
    <%@ include file="../layout/header.jsp" %>
    <div class="wrapper">

        <div id="main" class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h2>Add an Account</h2>
                <form:form name="add" method="POST" action="/miniapp/account/add"
                           onsubmit="return validateform()">
                    <table class="table table-hover">

                        <tr>
                            <td><form:label path="cid">Costumerid</form:label></td>
                            <td><form:input path="cid"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="name">Name</form:label></td>
                            <td><form:input path="name"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="tipe">Type</form:label></td>
                            <td><form:input path="tipe"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="account_Number">Account Number</form:label></td>
                            <td><form:input minlength="10" maxlength="10" path="account_Number"/></td>
                        </tr>
                        <tr>
                            <td><form:label path="balance">Balance</form:label></td>
                            <td><form:input path="balance"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                </form:form>
            </div>
        </div>
    </div>
        <script>
            function validateform() {
                var cid = document.add.cid.value;
                var account_Number = document.add.account_Number.value;

                if (cid == null || cid === ""){
                    alert("Costumer id Can't Be Blank");
                    return false;
                }else if(account_Number == null || account_Number === ""){
                    alert("Please input Account Number");
                    return false;
                }
            }
        </script>
</body>
<%@ include file="../layout/footer.jsp" %>

</html>