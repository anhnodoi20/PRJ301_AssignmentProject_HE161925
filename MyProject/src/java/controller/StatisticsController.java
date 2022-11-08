/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import controller.auth.BaseRoleController;
import dal.GroupDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import model.Account;
import model.Attandance;
import model.Group;
import model.Session;
import model.Student;

/**
 *
 * @author win
 */
public class StatisticsController extends BaseRoleController {

    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            int groupid = Integer.parseInt(req.getParameter("gid"));
            int lid = Integer.parseInt(req.getParameter("lid"));
            int subid = Integer.parseInt(req.getParameter("subid"));
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
            double teached = 0;
            int teached1 = 0;
            for (Session ses : listses) {
                if (ses.isAttandated()) {
                    teached++;
                    teached1++;
                }
            }
            teached = (int) teached;

            pt = teached / listses.size() * 100;
            pt = Math.round(pt * 10) / 10;

            req.setAttribute("numberses", listses.size());
            req.setAttribute("perteached", pt);
            req.setAttribute("teached", teached1);

            req.setAttribute("key", map);
            req.setAttribute("group", group);
            resp.getWriter().print("ngu");
            req.getRequestDispatcher("../view/view_lecturer/statistics.jsp").forward(req, resp);
        
    }

}
