/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import model.Account;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author win
 */
public class AttController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            response.sendRedirect("../login");
        } else {
            int sesid = Integer.parseInt(request.getParameter("id"));
            SessionDBContext sesDB = new SessionDBContext();
            Session ses = sesDB.get(sesid);
            request.setAttribute("ses", ses);
            request.getRequestDispatcher("../view/view_lecturer/take_att_demo.jsp").forward(request, response);
        }

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
        Session ses = new Session();
        ses.setId(Integer.parseInt(request.getParameter("sesid")));
        String[] stdids = request.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attandance a = new Attandance();
            Student s = new Student();
            a.setStudent(s);
            a.setDescription(request.getParameter("description" + stdid));
            a.setPresent(request.getParameter("present" + stdid).equals("present"));
            s.setId(Integer.parseInt(stdid));
            ses.getAttandances().add(a);
        }
        SessionDBContext db = new SessionDBContext();
        db.update(ses);
       // response.sendRedirect("take_attandance?id="+ses.getId());
       request.getRequestDispatcher("../view/view_lecturer/take_att_sus.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
