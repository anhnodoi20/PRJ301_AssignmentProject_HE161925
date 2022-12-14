/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import controller.auth.BaseRoleController;
import dal.SessionDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.Account;
import model.Session;

/**
 *
 * @author win
 */
public class ViewAttController extends BaseRoleController {

    
    @Override
    protected void processAuthPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void processAuthGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute("account");
        if (account == null) {
            resp.sendRedirect("../login");
        } else {
            int sesid = Integer.parseInt(req.getParameter("id"));
            SessionDBContext sesDB = new SessionDBContext();
            Session ses = sesDB.get(sesid);
            req.setAttribute("ses", ses);
            req.getRequestDispatcher("../view/view_lecturer/viewAtt.jsp").forward(req, resp);
        }

    }

}
