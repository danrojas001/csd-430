package projectTableFiles;

import java.sql.*;

public class DropTable {

    Connection con;

    Statement stmt;

    public DropTable() {

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
            stmt.executeUpdate("DROP TABLE IF EXISTS dan_library_data");
            System.out.println("Table address Dropped");
        } catch (SQLException e) {
            System.out.println("Table address does not exist");
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
        DropTable dropTable = new DropTable();
    }
}