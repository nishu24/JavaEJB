/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaProject.servlet;

import com.javaProject.stateless.SessionEJBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nisarg
 */
@WebServlet(name = "EJBFormServlet", urlPatterns = {"/EJBFormServlet"})
public class EJBFormServlet extends HttpServlet {

    @EJB
    private SessionEJBean sessionEJBean;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int number1 = Integer.parseInt(request.getParameter("number1"));
        int number2 = Integer.parseInt(request.getParameter("number2"));

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>CalculatorFormServlet</title>");
            out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"> ");
            out.println("<link rel=\"stylesheet\" href=\"http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css\">");
            out.println("<script src=\"http://code.jquery.com/jquery-1.11.2.min.js\"></script>");
            out.println("<script src=\"http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js\"></script>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div data-role=\"panel\" id=\"myPanel\"> ");
            out.println("    <h2>Panel Header</h2>");
            out.println("<p>You can close the panel by clicking outside the panel, pressing the Esc key or by swiping.</p>");
            out.println("<h3>Addition of number1 and number2 is " + sessionEJBean.add(number1, number2) + "</h3>");
            out.println("<h3>Subtraction of number1 and number2 is " + sessionEJBean.subtract(number1, number2) + "</h3>");
            out.println("<h3>Division of number1 and number2 is " + sessionEJBean.division(number1, number2) + "</h3>");
            out.println("<h3>Multiplication of number1 and number2 is " + sessionEJBean.multiply(number1, number2) + "</h3>");
            out.println("<h3>Your converted $ is --> " + sessionEJBean.conversion(number1) + " rupees</h3>");
            out.println("Click <a href='index.html'>here</a> to go back");
            out.println("</div> ");
            out.println("  <div data-role=\"main\" class=\"ui-content\"> ");
            out.println("  <p>Click on the button below to open the Panel.</p>");
            out.println("<a href=\"#myPanel\" class=\"ui-btn ui-btn-inline ui-corner-all ui-shadow\">Open Panel</a>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
