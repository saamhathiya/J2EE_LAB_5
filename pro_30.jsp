<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Information</title>
</head>
<body>
    <h1>Student Information</h1>
    <%
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
    %>
    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Age:</strong> <%= age %></p>
    <p><strong>Email:</strong> <%= email %></p>
</body>
</html>
