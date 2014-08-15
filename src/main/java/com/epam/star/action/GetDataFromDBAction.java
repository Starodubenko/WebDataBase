package com.epam.star.action;

import com.epam.star.entity.Element;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GetDataFromDBAction implements Action {

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

            List<List> result = new ArrayList<>();
            List<Element> titlesOfColumns = new ArrayList<>();

            boolean f = true;
            while (resultSet.next()) {
                List<Element> row = new ArrayList<>();
                int i = 1;
                    while(i <= resultSetMD.getColumnCount()){

                        if (f) titlesOfColumns.add(new Element(FirsUpperSymbol(resultSetMD.getColumnName(i).toLowerCase())));
                        row.add(new Element(resultSet.getString(i)));
                        i++;
                    }
                f = false;

                result.add(row);
            }
            request.setAttribute("titlesOfColumns", titlesOfColumns);
            request.setAttribute("result", result);
            connection.close();
        }
            return "/WEB-INF/result.jsp";
    }

    private String FirsUpperSymbol(String s){
        String result = s.substring(0,1).toUpperCase() + s.substring(1);
        return result;
    }
}
