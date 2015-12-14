package com.exigenservices;

/**
 * Created by Ваня on 13.12.2015.
 */


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss dd.MM.yyyy");

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<head><title>My first web app servlet</title></head>");
        writer.println("<body>current time is " + format.format(calendar.getTime()) + "</body>");
        writer.println("</html>");
        writer.close();
    }
}
