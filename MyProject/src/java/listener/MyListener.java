/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 *
 * @author win
 */
public class MyListener implements ServletContextListener,HttpSessionAttributeListener, HttpSessionListener{
    ServletContext application;
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Servlet Context undeploy...");
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        System.out.println("Servlet Context deploy successfull...");
        application = sce.getServletContext();
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        System.out.println("One session was replaced");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("One session was removed");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println("One session was added");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        Long OnlineUsers = (long) application.getAttribute("OnlineUsers");
        if( OnlineUsers == null) {
            OnlineUsers = 0L;
        }
        OnlineUsers--;
        System.out.println("seseion destroyed");
        application.setAttribute("OnlineUsers", OnlineUsers);
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        Long OnlineUsers = (long) application.getAttribute("OnlineUsers");
        if( OnlineUsers == null) {
            OnlineUsers = 0L;
        }
        OnlineUsers++;
        System.out.println("seseion created");
        application.setAttribute("OnlineUsers", OnlineUsers);
    }
    
    
    
}
