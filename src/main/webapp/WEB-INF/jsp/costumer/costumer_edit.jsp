<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<link href="<c:url value="/resources/css/default.css" />" rel="stylesheet"/>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>

<div class="container-fluid">
  <%@ include file = "../layout/header.jsp" %>
  <div class="wrapper">
	<%@ include file = "../layout/menubar.jsp" %>
	
    <div id="main">
	<h2>Add a Costumer</h2>
	<form:form method="POST" action="/miniapp/costumer/edit">
		<table>
			<tr>
				<td><form:label path="id">id</form:label></td>
				<td><form:input readonly="true" path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="alamat">Alamat</form:label></td>
				<td><form:input path="alamat" /></td>
			</tr>
			<tr>
				<td><form:label path="ttl">TTL</form:label></td>
				<td><form:input path="ttl" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

  </div>      
  <%@ include file = "../layout/footer.jsp" %>
</div>

</body>
</html>
