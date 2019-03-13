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
                <div class="col-sm-6">
                    <h2 style="padding-left: 37px">Customer Edit</h2>
                    <br>
                    <form:form id="myForm" method="POST" action="/miniapp/costumer/edit" onsubmit="return verifyEdit()">
                        <td><form:input type="hidden" readonly="true" path="id"/></td>
                        <table>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="name">Name</form:label></th>
                                <td style="padding-left: 50px"><form:input cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px; padding-left: 15px"
                                                path="name"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="id_Number">Identity Number</form:label></th>
                                <td style="padding-left: 50px"><form:input cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px; padding-left: 15px"
                                                path="id_Number"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="mother_Name">Mother Name</form:label></th>
                                <td style="padding-left: 50px"><form:input cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px; padding-left: 15px"
                                                path="mother_Name"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="address">Address</form:label></th>
                                <td style="padding-left: 50px"><form:input cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px; padding-left: 15px"
                                                path="address"/></td>
                            </tr>
                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="birth_Date">Birth Date</form:label></th>
                                <td style="padding-left: 50px"><form:input cssClass="column6 form-control form-control-sm"
                                                cssStyle="text-align: left; width: 210px; padding-right: 10px"
                                                type="date" path="birth_Date"/></td>
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

    function verifyEdit() {
        var r = confirm("Are you sure want to edit Customer Info?");
        return r === true;
    }
</script>
</body>
<%@ include file="../layout/footer.jsp" %>

</html>
