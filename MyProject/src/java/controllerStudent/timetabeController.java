/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllerStudent;

import controller.auth.BaseRoleController;
import dal.StudentDBContext;
import dal.TimeSlotDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import model.Account;
import model.Attandance;
import model.Session;
import model.TimeSlot;
import util.DateTimeHelper;

/**
 *
 * @author win
 */
public class timetabeController extends BaseRoleController {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param req servlet request
     * @param resp servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        int sid = account.getLid();
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

            StudentDBContext stdb = new StudentDBContext();
            ArrayList<Session> sessions = stdb.filter(sid, from, to);
            request.setAttribute("sessions", sessions);
            ArrayList<Attandance> list = stdb.getPresent(sid);
            request.setAttribute("attandance", list);

        } catch (Exception e) {
        }

        request.getRequestDispatcher("../view/view_student/timetable.jsp").forward(request, response);

    }
    
    @Override
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

}
