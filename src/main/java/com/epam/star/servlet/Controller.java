package com.epam.star.servlet;

import com.epam.star.action.Action;
import com.epam.star.action.ActionFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class Controller extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String actionName = req.getParameter("actionName").toLowerCase();
//        System.out.println(actionName);

        Action action = ActionFactory.getAction(actionName); //getdatafromdbaction
        String reuslt = null;
        try {
            reuslt = action.execute(req);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


        req.getRequestDispatcher(reuslt).forward(req,resp);
    }
}
