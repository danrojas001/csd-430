<%--
Dan Rojas
Mod 3.2
21-Jun-26
--%>

<%-- jsp page to dispaly values passed from form page --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Results</title>
</head>


<%-- variables containing user imnput from form --%>
<%
    String f_name = request.getParameter("f_name");
    String l_name = request.getParameter("l_name");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
%>

<body>
<h1>User Information</h1>

<%-- table to display input values --%>
<table>
    <tbody>
    <tr>
        <td>First Name:</td>
        <td><%= f_name %>
        </td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td><%= l_name %>
        </td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><%= email %>
        </td>
    </tr>
    <tr>
        <td>Gender:</td>
        <td><%= gender %>
        </td>
    </tr>
    <tr>
        <td>Age:</td>
        <td><%= age %>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
