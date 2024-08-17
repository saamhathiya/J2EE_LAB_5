<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Leap Year Result</title>
</head>
<body>
    <h1>Leap Year Result</h1>
    <%
        String yearParam = request.getParameter("year");
        int year = Integer.parseInt(yearParam);
        
        boolean isLeapYear = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
    %>
    <p>The year <%= year %> is <%= isLeapYear ? "a leap year" : "not a leap year" %>.</p>
</body>
</html>
