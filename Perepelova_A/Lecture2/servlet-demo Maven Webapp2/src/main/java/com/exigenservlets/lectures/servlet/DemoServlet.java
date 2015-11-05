package com.exigenservlets.lectures.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created by A_Perepelova on 29.10.2015.
 */
public class DemoServlet extends HttpServlet {
 protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
     response.setContentType("text/html");
     PrintWriter writer = response.getWriter();
     long curTime = System.currentTimeMillis();
     Date date = new Date(curTime);
     writer.println("<html>");
     writer.print("<head><title>Page with time</title></head>");
     writer.println("<body>"+date.toString()+"</body>");
     writer.println("</html>");
     writer.close();
 }


}
