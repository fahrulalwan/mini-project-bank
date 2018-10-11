<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <%@ include file = "layout/header.jsp" %>

  <div class="wrapper">
	<%@ include file = "layout/menubar.jsp" %>
  </div>

  <%@ include file = "layout/footer.jsp" %>
</div>

</body>
</html>

