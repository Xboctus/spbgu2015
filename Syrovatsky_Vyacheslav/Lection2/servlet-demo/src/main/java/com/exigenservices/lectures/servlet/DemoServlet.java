package com.exigenservices.lectures.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DemoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

        res.setContentType("text/html");

        PrintWriter writer = res.getWriter();
        writer.println("<html>");
        writer.println("<head><title>My first page</title></head>");
        writer.println("<body>Current time is " + sdf.format(cal.getTime()) + "</body>");
        writer.println("</html>");
        writer.close();
    }
}
