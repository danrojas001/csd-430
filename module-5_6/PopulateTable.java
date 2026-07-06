package projectTableFiles;

import java.sql.*;

public class PopulateTable {

    Connection con;

    Statement stmt;

    public PopulateTable() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/csd430";
            String user = "student1";
            String password = "pass";
            con = DriverManager.getConnection(url, user, password);
            stmt = con.createStatement();
        } catch (Exception e) {
            System.out.println("Error connection to database.");
            e.printStackTrace();
            System.exit(0);
        }

        try {
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780593820247', 'Dungeon Crawler Carl', 'Matt Dinniman', '2024-08-27', 'LitRPG/Fantasy/Sci-Fi')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780593820261', 'Carl''s Doomsday Scenario', 'Matt Dinniman', '2024-09-24', 'LitRPG/Fantasy/Sci-Fi')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780593820285', 'The Dungeon Anarchist''s Cookbook', 'Matt Dinniman', '2024-10-22', 'LitRPG/Fantasy')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780316134675', 'Leviathan Wakes', 'James S. A. Corey', '2011-06-15', 'Science Fiction/Space Opera')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780316202275', 'Caliban''s War', 'James S. A. Corey', '2012-06-26', 'Science Fiction/Space Opera')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780316235426', 'Abaddon''s Gate', 'James S. A. Corey', '2013-06-04', 'Science Fiction/Space Opera')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9781429994897', 'The Alloy of Law', 'Brandon Sanderson', '2011-11-08', 'Fantasy/Western/Adventure')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780765378552', 'Shadows of Self', 'Brandon Sanderson', '2015-10-06', 'Fantasy/Mystery/Western')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780765378576', 'The Bands of Mourning', 'Brandon Sanderson', '2016-01-26', 'Fantasy/Adventure')") + "row updated");
            System.out.println(
                    stmt.executeUpdate("INSERT INTO dan_library_data VALUES('9780765391193', 'The Lost Metal', 'Brandon Sanderson', '2022-11-15', 'Fantasy/Epic Fantasy')") + "row updated");
            stmt.executeUpdate("COMMIT");
            System.out.println("Data Inserted");
        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
            System.out.println("Insert Data Failed");
        }

        try {
            stmt.close();
            con.close();
            System.out.println("Database connections closed");
        } catch (SQLException e) {
            System.out.println("Connection close failed");
        }
    }

    public static void main(String args[]) {
        PopulateTable InsertData = new PopulateTable();
    }
}