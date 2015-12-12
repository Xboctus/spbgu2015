package com.exigenservices.lectures.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DemoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");

        PrintWriter writer = res.getWriter();
        writer.println("<html>");
        writer.println("<head><title>My first page</title></head>");
        writer.println("<body>This is my first page</body>");
        writer.println("</html>");
        writer.close();
    }
}
