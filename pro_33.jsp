<%@ page errorPage="pro_33_1.jsp" %>
<html>
<head>
<title>JSP Page</title>
</head>
<body>
page may generate an error
<%
int x = 1;
if (x == 1)
{
throw new RuntimeException("Oh no!!!");
}
%>
</body>
</html>