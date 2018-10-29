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
                    <form:form id="myForm" method="POST" action="/miniapp/account/addWithdraw">
                        <table>

                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="accountNumber">Account Number</form:label></th>
                                <td style="padding-left: 50px"><form:input
                                        cssClass="column6 form-control form-control-sm"
                                        cssStyle="text-align: left; width: 210px; padding-right: 10px"
                                        path="accountNumber" readonly="true"/></td>
                            </tr>

                            <tr class="table100-head">
                                <th><form:label cssClass="column1"
                                                cssStyle="color: black; padding-right: 100px; display: ruby"
                                                path="amount">Amount</form:label></th>
                                <td style="padding-left: 50px"><form:input
                                        cssClass="column6 form-control form-control-sm"
                                        cssStyle="text-align: left; width: 210px; padding-right: 10px" id="rupiah"
                                        placeholder="Rp." path="amount"/></td>
                            </tr>
                        </table>
                        <br>
                        <div align="center">
                            <button type="submit" value="Submit" class="bttn-unite bttn-sm bttn-danger">Submit</button>
                            &nbsp;
                            <button type="button" value="Reset" class="bttn-unite bttn-sm bttn-danger"
                                    onclick="resetform()">Reset</button>
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

    var rupiah = document.getElementById("rupiah");
    rupiah.addEventListener("keyup", function (e) {
        // tambahkan 'Rp.' pada saat form di ketik
        // gunakan fungsi formatRupiah() untuk mengubah angka yang di ketik menjadi format angka
        rupiah.value = formatRupiah(this.value);
    });


    /* Fungsi formatRupiah */
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, "").toString(),
            split = number_string.split(","),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        // tambahkan titik jika yang di input sudah menjadi angka ribuan
        if (ribuan) {
            separator = sisa ? "." : "";
            rupiah += separator + ribuan.join(".");
        }

        rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
        return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
    }
</script>
</body>
<%@ include file="../layout/footer.jsp" %>
</html>
