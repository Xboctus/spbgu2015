package com.exigenservices.lectures.servlet;

/**
 * Created by Ann on 29.10.15.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DemoServlet extends HttpServlet{
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("text/html");

        Date d1 = new Date();
        SimpleDateFormat df = new SimpleDateFormat("MM/dd/YYYY HH:mm a");
        String formattedDate = df.format(d1);

        PrintWriter writer = res.getWriter();
        writer.println("<html>");
        writer.println("<head><title>My first page </title></head>");
        writer.println("<body>This is my first page </body>");
        writer.println(formattedDate);
        writer.println("</html>");
        writer.close();
    }

}
