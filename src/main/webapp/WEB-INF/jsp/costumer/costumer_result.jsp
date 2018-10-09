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
		<h2>Costumer Information</h2>
	<table>
		<tr>
			<td>Name</td>
			<td>${costumer.name}</td>
		</tr>
		<tr>
			<td>Alamat</td>
			<td>${costumer.alamat}</td>
		</tr>
		<tr>
			<td>TTL</td>
			<td>${costumer.ttl}</td>
		<tr>
			<td>ID</td>
			<td>${costumer.id}</td>
		</tr>
		
		</tr>
	</table>
   </div>

  </div>      
  <%@ include file = "../layout/footer.jsp" %>
</div>

</body>
</html>