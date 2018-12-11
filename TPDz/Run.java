package TPDz;

import java.sql.*;
import java.io.*;

class Run {

    public static void main (String args []) throws SQLException, IOException {

        try {
            Class.forName ("org.postgresql.Driver");
        }
        catch (ClassNotFoundException e) {
            System.out.println ("Could not load the driver");
            System.exit(1);
        }

        System.out.println("This program will give list of books a user wants to read, given their ID");

        String user, pass;
        user = MaskPassword.getPassword("Enter database userid: : ");
        pass = MaskPassword.getPassword("Enter database password: ");

        // edit this line to reflect your database connection
        Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/company", user, pass);

        String query = "select BookISBN from WillRead where UsID = ?";
        PreparedStatement p = conn.prepareStatement (query);
        String UsID = readEntry("Enter a User ID: ");

        p.clearParameters();
        p.setString(1, UsID);

        ResultSet r = p.executeQuery();

        while (r.next ()) {
            String lname = r.getString(1);

            System.out.println("Book ISBN: " + lname );
        }

        conn.close();
    }

    //readEntry function -- to read input string
    static String readEntry(String prompt) {

        try {

            StringBuffer buffer = new StringBuffer();
            System.out.print(prompt);
            System.out.flush();
            int c = System.in.read();

            while(c != '\n' && c != -1) {
                buffer.append((char)c);
                c = System.in.read();
            }

            return buffer.toString().trim();
        }
        catch (IOException e) {
            return "";
        }

    }

}