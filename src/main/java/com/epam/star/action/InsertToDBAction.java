package com.epam.star.action;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

public class InsertToDBAction implements Action {
    @Override
    public String execute(HttpServletRequest request) throws SQLException, ClassNotFoundException {


        String tableName = request.getParameter("TableName");
        System.out.println(tableName);
        if (tableName != null && tableName != "") {

            try {
                Class.forName("org.h2.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection connection = DriverManager.getConnection("jdbc:h2:tcp://localhost/F:/Видео Epam/db/FPDB", "Rody", "1");
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT * FROM " + tableName);
            ResultSetMetaData resultSetMD = resultSet.getMetaData();


        }

        return "/WEB-INF/result.jsp";
    }
}
