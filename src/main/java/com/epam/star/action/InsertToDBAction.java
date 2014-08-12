package com.epam.star.action;

import com.epam.star.entity.Element;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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

            Connection connection = DriverManager.getConnection("jdbc:h2:tcp://localhost/F:/Видео Epam/db/FPDB", "Rody", "1"); //"jdbc:h2:tcp://localhost/F:/Видео Epam/db/FPDB", "Rody", "1"
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("SELECT * FROM " + tableName);
            ResultSetMetaData resultSetMD = resultSet.getMetaData();

            List<Element> namesOfColumns = new ArrayList<>();

            int i = 2;
            while(i <= resultSetMD.getColumnCount()){
                if (resultSetMD.getColumnName(i) != "ID")
                    namesOfColumns.add(new Element(FirsUpperSymbol(resultSetMD.getColumnName(i).toLowerCase())));
                i++;
            }

//            System.out.println(namesOfColumns);

            String valuesString = "(";
            String colsNamesString = "(";

            String[] parameters = request.getParameterValues("RegistrationValues");
            for (String parameter : parameters) {
                valuesString = valuesString + parameter + ",";
            }
            valuesString = valuesString.substring(0,valuesString.length()-1) + ")";
            System.out.println(valuesString);

            for (Element nameOfColumn : namesOfColumns) {
                colsNamesString = colsNamesString + nameOfColumn.getElement() + ",";
            }
            colsNamesString = colsNamesString.substring(0,colsNamesString.length()-1) + ")";
            System.out.println(colsNamesString);


//            Map<String, String[]> parameterMap = request.getParameterMap();
//            Object[] objects = parameterMap.keySet().toArray();
//            for (Object s : objects) {
//                colsNamesString = colsNamesString + s + ",";
//            }
//            colsNamesString = colsNamesString.substring(0,colsNamesString.length()-1) + ")";
//            System.out.println(colsNamesString);


//            Enumeration e = request.getParameterNames();
//            String allParameters = "Parameters: ";
//            while (e.hasMoreElements()) {
//                String name = (String) e.nextElement();
//                allParameters = allParameters +": "+ name;
//            }


//            System.out.println(request.getAttribute("TableName"));

            statement.executeQuery("insert into " + tableName + " " + colsNamesString + " values " + valuesString);

            connection.close();
        }

        return "index.jsp";
    }

    private String FirsUpperSymbol(String s){
        String result = s.substring(0,1).toUpperCase() + s.substring(1);
        return result;
    }
}
