<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Dan Rojas
04-Jun-26
-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Test</title>
</head>
<body>
<h1>Test JSP File</h1>

<%
    String animal1 = "quick brown fox";
    String animal2 = "lazy dog";
    String javaVersion = System.getProperty("java.version");
%>

<p>The <%=animal1%> jumped over the <%=animal2%>.</p>
<p>I'm Currently using Java version <%=javaVersion%>.</p>
<p>Server Info: ${pageContext.servletContext.serverInfo}</p>

</body>
</html>
