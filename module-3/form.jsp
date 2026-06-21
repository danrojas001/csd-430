<%--
Dan Rojas
Mod 3.2
21-Jun-26
--%>

<%-- Form for gathering basic personal information --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input Form</title>
</head>

<body>
<h1>User Information Form</h1>
<form name="basic_input" action="results.jsp" method="post">
    <%-- table to format form --%>
    <table>
        <tbody>
        <tr>
            <%-- input and foramt validation for first name --%>
            <td>First Name:</td>
            <td><input type="text" name="f_name" value="" size="50" pattern="[A-Za-z' \-]{2,50}"
                       placeholder="Letters, spaces, apostrophes, or hyphens only" required></td>
        </tr>
        <tr>
            <%-- input and format validation for last name --%>
            <td>Last Name:</td>
            <td><input type="text" name="l_name" value="" size="50" pattern="[A-Za-z' \-]{2,50}"
                       placeholder="Letters, spaces, apostrophes, or hyphens only" required></td>
        </tr>
        <tr>
            <%-- input and format validation for email --%>
            <td>Email:</td>
            <td><input type="text" name="email" value="" size="50"
                       pattern="[a-zA-Z0-9._%+\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,}" placeholder="example@example.com"
                       required></td>
        </tr>
        <%-- radio bruttons for gender selection --%>
        <tr>
            <td>Gender:</td>
            <td><input type="radio" name="gender" value="Male" id="male" required>Male</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="radio" name="gender" value="Female" id="female" required>Female</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="radio" name="gender" value="Prefer" id="prefer" required>Prefer not to say</td>
        </tr>
        <tr>
            <%-- dropdown for age selection --%>
            <td>Age:</td>
            <td>
                <select name="age" required>
                    <option value="" disabled selected>Select age</option>
                    <%
                        for (int i = 18; i <= 100; i++) {
                    %>
                    <option value="<%= i %>"><%= i %>
                    </option>
                    <%
                        }
                    %>
                </select>
            </td>
        </tr>
        </tbody>
    </table>

    <%-- buttons to clear and sumbit values --%>
    <button type="reset">Clear</button>
    <button type="submit">Submit</button>
</form>
</body>
</html>
