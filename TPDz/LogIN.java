package TPDz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.io.*;

public class LogIN {

    public static void main(String args[]) {

        Connection conn = null;
        String user, pass;

        System.out.println("This program will connect to company database");

        user = MaskPassword.getPassword("Enter database userid  : ");
        pass = MaskPassword.getPassword("Enter database password: ");

        try {

            Class.forName("org.postgresql.Driver");

            // DriverManager.register(new org.postgresql.Driver());

            // edit this line to reflect your database connection
            conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/company", user, pass);
        }
        catch (Exception e) {
            // e.printStackTrace();
            // System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(1);
        }

        System.out.println("PostgreSQL database opened successfully");

    }

}