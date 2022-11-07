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
public class OnlineUserListener  implements HttpSessionListener , ServletContextListener , HttpSessionAttributeListener{
    ServletContext application;
    
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println("seseion created");
        Long OnlineUsers = (Long)application.getAttribute("OnlineUsers");
        if( OnlineUsers == null) {
            OnlineUsers = 0L;
        }      
        OnlineUsers++;
        System.out.println("onlineUser: "+OnlineUsers);
        application.setAttribute("OnlineUsers", OnlineUsers);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        Long OnlineUsers = (Long) application.getAttribute("OnlineUsers");
        if(OnlineUsers != 0){
        System.out.println("seseion destroyed");   
        if( OnlineUsers == null) {
            OnlineUsers = 0L;
        }
        OnlineUsers--;
        System.out.println("onlineUser: "+OnlineUsers);
        application.setAttribute("OnlineUsers", OnlineUsers);
        }
    }

    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
       System.out.println("Context undeploy...");
       
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Context deploy successfull...");
        
        application = sce.getServletContext();
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("seseion destroyed");   
        Long OnlineUsers = (Long) application.getAttribute("OnlineUsers");
        if( OnlineUsers == null) {
            OnlineUsers = 0L;
        }
        OnlineUsers--;
        System.out.println("onlineUser: "+OnlineUsers);
        application.setAttribute("OnlineUsers", OnlineUsers);
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        HttpSessionAttributeListener.super.attributeAdded(se); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
    
    
}
