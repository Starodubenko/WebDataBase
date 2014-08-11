<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="i18n.messages">
    <html>

    <head>
        <title>Welcome</title>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    </head>
    <body>
    <div>
        <form action="${pageContext.request.contextPath}/db" method="post">
            <input type="submit" value="Go to DataBase">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
            </ul>
            <input type="hidden" name="actionName" value="opendbaction">
        </form>
    </div>

    </body>
    </html>
</fmt:bundle>