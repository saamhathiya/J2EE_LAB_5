<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculation Result</title>
</head>
<body>
    <h1>Calculation Result</h1>
    <%
        String num1Param = request.getParameter("num1");
        String num2Param = request.getParameter("num2");
        String operation = request.getParameter("operation");
        
        double num1 = Double.parseDouble(num1Param);
        double num2 = Double.parseDouble(num2Param);
        
        double result = 0;
        String message = "";
        
        switch (operation) {
            case "add":
                result = num1 + num2;
                message = "Addition";
                break;
            case "subtract":
                result = num1 - num2;
                message = "Subtraction";
                break;
            case "multiply":
                result = num1 * num2;
                message = "Multiplication";
                break;
            case "divide":
                if (num2 != 0) {
                    result = num1 / num2;
                    message = "Division";
                } else {
                    message = "Error: Division by zero is not allowed.";
                }
                break;
            default:
                message = "Unknown operation.";
                break;
        }
    %>
    <p><strong>Operation:</strong> <%= message %></p>
    <p><strong>Number 1:</strong> <%= num1 %></p>
    <p><strong>Number 2:</strong> <%= num2 %></p>
    <p><strong>Result:</strong> <%= (operation.equals("divide") && num2 == 0) ? "Error: Division by zero" : result %></p>
</body>
</html>
