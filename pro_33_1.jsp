<%@ page isErrorPage="true" import="java.io.PrintWriter"%>
<html>
<body >
<h1>Error</h1>
Sorry, an error occurred.
<p>
Your page has generated following errors:
<p>
<% exception.printStackTrace(new PrintWriter(out)); %>
</body>
</html>