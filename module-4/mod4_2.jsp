<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page import="Beans.Book" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%--
Dan Rojas
Mod 4.2
28-Jun-26
--%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="Stylesheet" href="style.css" type="text/css">
    <title>Module 2.2</title>
</head>
<body>
<div id="center_ribbon">
    <div id="title_box">
        <h1 id="title">My Recent "Good Reads" List</h1>
    </div>
    <%
        /*
        Create Book objects using Book class convenience constructor to display in the table.
         */
        Book book1 = new Book("Dungeon Crawler Carl", "Matt Dinniman", "Science Fantasy", LocalDate.of(2020, 10, 2));
        Book book2 = new Book("Leviathan Wakes", "James Corey", "Science Fiction", LocalDate.of(2011, 6, 2));
        Book book3 = new Book("Wax and Wayne", "Brandon Sanderson", "Fantasy-Western", LocalDate.of(2011, 11, 8));
        Book book4 = new Book("Battle Ground", "Jim Butcher", "Urban Fantasy", LocalDate.of(2020, 9, 29));
        Book book5 = new Book("Hyperion", "Dan Simmons", "Science Fiction", LocalDate.of(1989, 5, 26));

        /*
        Store all Book objects in a collection
         */
        ArrayList<Book> books = new ArrayList<>();
        Collections.addAll(books, book1, book2, book3, book4, book5);
    %>

    <div id="table_box">
        <table id="books_table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
                <th>Publish Date</th>
            </tr>
            </thead>
            <tbody>
            <%
                /*
                Iterate through books collection to display properties
                 */
                for (Book book : books) {
            %>
            <%--
            Use Book class getters to display data
            --%>
            <tr>
                <td><%= book.getTitle()%>
                </td>
                <td><%= book.getAuthor()%>
                </td>
                <td><%= book.getGenre()%>
                </td>
                <td><%= book.getPublishDate()%>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
