package com.epam.star.action;

import com.epam.star.entity.Element;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OpenDBAction implements Action {


    @Override
    public String execute(HttpServletRequest request) throws SQLException, ClassNotFoundException {

            try {
                Class.forName("org.h2.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection connection = DriverManager.getConnection("jdbc:h2:tcp://localhost/F:/Видео Epam/db/FPDB", "Rody", "1");
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT table_name FROM information_schema.TABLES where table_type = 'TABLE'");

            List<Element> namesOfTables = new ArrayList<>();

            while(resultSet.next()){;
                namesOfTables.add(new Element(resultSet.getString(1)));
            }

            System.out.println(namesOfTables);

            request.setAttribute("namesOfTables", namesOfTables);
            connection.close();

        return "/WEB-INF/result.jsp";
    }
}
