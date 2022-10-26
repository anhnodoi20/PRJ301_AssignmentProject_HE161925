/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.GroupDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;

/**
 *
 * @author win
 */
public class StatisticsController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StatisticsController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StatisticsController at " + request.getContextPath() + "</h1>");
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

        int groupid = Integer.parseInt(request.getParameter("gid"));
        int lid = Integer.parseInt(request.getParameter("lid"));
        int subid = Integer.parseInt(request.getParameter("subid"));
        GroupDBContext groupDB = new GroupDBContext();
        Group group = groupDB.get(groupid, lid, subid);

        // group consist of ses 
        // ses consist of att of student
        ArrayList<Student> liststudent = group.getStudents();
        ArrayList<Session> listses = group.getSessions();
        
        
        double pt = 0;
        Map<Integer, Double> map = new HashMap<>();
        for (Student student : liststudent) {
            double pa = 0;
            double count_ses_absent = 0;
            double count_ses_teach = 0;
            double count_ses_teached = 0;
            for (Session ses : listses) {
                count_ses_teach++;
                ArrayList<Attandance> listatts = ses.getAttandances();
                if (ses.isAttandated()) {
                    count_ses_teached++;
                    for (Attandance att : listatts) {
                        if (att.getStudent().getId() == student.getId()) {
                            if (att.isPresent() == false) {
                                count_ses_absent++;
                            }
                        }
                    }
                }            
            }
            pa = count_ses_absent / count_ses_teach * 100;
            pa = Math.round(pa * 10) / 10;
            map.put(student.getId(), pa);
        }
        double teached= 0;
        int teached1 = 0;
        for (Session ses : listses) {
            if(ses.isAttandated()){
                teached++;
                teached1++;
            }
        }
        teached = (int)teached;
        
        pt = teached/listses.size() * 100;
        pt = Math.round(pt * 10) / 10;
        
        request.setAttribute("numberses", listses.size());
        request.setAttribute("perteached", pt);
        request.setAttribute("teached", teached1);
        
        request.setAttribute("key", map);
        request.setAttribute("group", group);
        request.getRequestDispatcher("../view/view_lecturer/statistics.jsp").forward(request, response);
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
