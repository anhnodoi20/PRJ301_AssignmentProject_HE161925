/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import controller.auth.BaseRoleController;
import dal.LecturerDBContext;
import dal.SessionDBContext;
import dal.TimeSlotDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import model.Account;
import model.Lecturer;
import model.Session;
import model.TimeSlot;
import util.DateTimeHelper;

/**
 *
 * @author Hello Ngo Tung Son handsome
 */
public class TimetableController extends BaseRoleController {

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
        //       int lid = Integer.parseInt(request.getParameter("lid"));
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        int lid = account.getLid();
        try {
            //  lid = Integer.parseInt(request.getParameter("lid"));
            String raw_year = request.getParameter("year");
            String raw_daymonth = request.getParameter("week");

            java.sql.Date from = null;
            java.sql.Date to = null;
            if (raw_year == null || raw_year.length() == 0 || raw_daymonth == null || raw_daymonth.length() == 0) {
                Date today = new Date();
                int todayOfWeek = DateTimeHelper.getDayofWeek(today);
                Date e_from = DateTimeHelper.addDays(today, 2 - todayOfWeek);
                Date e_to = DateTimeHelper.addDays(today, 8 - todayOfWeek);
                from = DateTimeHelper.toDateSql(e_from);
                to = DateTimeHelper.toDateSql(e_to);
            } else {
                from = java.sql.Date.valueOf(Integer.parseInt(raw_year) + "-" + raw_daymonth.substring(0, 5));
                to = DateTimeHelper.toDateSql(DateTimeHelper.addDays(DateTimeHelper.toDateUtil(from), 6));
            }

            request.setAttribute("from", from);
            request.setAttribute("to", to);
            request.setAttribute("dates", DateTimeHelper.getDateList(from, to));
            request.setAttribute("year", DateTimeHelper.getYear(from));

            request.setAttribute("daymonth", DateTimeHelper.getWeek(from, to));
            request.setAttribute("daymonths", DateTimeHelper.getDayMonthList(from));

            TimeSlotDBContext slotDB = new TimeSlotDBContext();
            ArrayList<TimeSlot> slots = slotDB.list();
            request.setAttribute("slots", slots);

            SessionDBContext sesDB = new SessionDBContext();
            ArrayList<Session> sessions = sesDB.filter(lid, from, to);
            request.setAttribute("sessions", sessions);

            LecturerDBContext lecDB = new LecturerDBContext();
            Lecturer lecturer = lecDB.get(lid);
            request.setAttribute("lecturer", lecturer);
        } catch (Exception e) {
        }

        request.getRequestDispatcher("../view/view_lecturer/timetable_demo.jsp").forward(request, response);

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
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);

    }

}
