<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:bundle basename="i18n.messages">
    <html>

    <head>
        <title>Welcome</title>
        <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet' href='style/index.css'>
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

        <%--<form action="${pageContext.request.contextPath}/db" method="post">--%>
    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Registration
    </button>
        <%--<input type="hidden" name="actionName" value="getdatafromdbaction">--%>
        <%--<input type="hidden" name="TableName" value="Clients">--%>
        <%--<input type="hidden" name="Regist" value="Registration">--%>
        <%--</form>--%>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Registration form</h4>
                </div>
                    <%--<c:forEach var="title" items="${titlesOfColumns}">--%>
                <form action="${pageContext.request.contextPath}/db" method="post">
                    <div class="registration">
                        <div class="form-group">
                            <label for="Login" class="label">Login</label>
                            <input type="text" name="RegistrationValues" value="Ivanov99" class="form-control" id="Login">
                        </div>
                        <div class="form-group">
                            <label for="Password" class="label">Password</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Password">
                        </div>
                        <div class="form-group">
                            <label for="Firsname" class="label">Firsname</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Firsname">
                        </div>
                        <div class="form-group">
                            <label for="Lastname" class="label">Lastname</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Lastname">
                        </div>
                        <div class="form-group">
                            <label for="Middlename" class="label">Middlename</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Middlename">
                        </div>
                        <div class="form-group">
                            <label for="Address" class="label">Address</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Address">
                        </div>
                        <div class="form-group">
                            <label for="Telephone" class="label">Telephone</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Telephone">
                        </div>
                        <div class="form-group">
                            <label for="Mobilephone" class="label">Mobilephone</label>
                            <input type="text" name="RegistrationValues" class="form-control" id="Mobilephone">
                        </div>
                    </div>
                        <%--</c:forEach>--%>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close registration form
                        </button>
                        <button type="submit" class="btn btn-primary">Registration</button>
                    </div>
                    <input type="hidden" name="actionName" value="inserttodbaction">
                    <input type="hidden" name="TableName" value="Clients">
                </form>
            </div>
        </div>
    </div>


    <script src="webjars/jquery/1.11.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
    </html>
</fmt:bundle>