<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- todo use controller to display this page (now you can access this page without your controller) --%>
<fmt:bundle basename="i18n.messages">
    <html>

    <head>
        <title>Welcome</title>
        <link rel='stylesheet' href='<c:url value="/webjars/bootstrap/3.2.0/css/bootstrap.min.css"/>'>
        <link rel='stylesheet' href='<c:url value="/style/index.css"/>'>
    </head>
    <body>


    <div class="main">
        <div class="authentication">
            <div id="autorized" onload="loginFormVisible(${user})">
                <label id="Welcome">Welcome</label>
            </div>
            <div id="unAutorized" onload="loginFormVisible(${user})">
                <form method="post">
                    <label >Login</label>
                    <br><input type="text" name="authenticationLogin" value="Vano34">
                    <label>Password</label>
                    <br><input type="text" name="authenticationPassword" value="101287">
                    <input type="submit" value="Login">
                    <input type="hidden" name="TableName" value="Clients">
                    <input type="hidden" name="actionName" value="loginaction">
                </form>
            </div>
        </div>

        <div class="banner">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="..." alt="...">

                        <div class="carousel-caption">
                            ...
                        </div>
                    </div>
                    <div class="item">
                        <img src="..." alt="...">

                        <div class="carousel-caption">
                            ...
                        </div>
                    </div>
                    ...
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>

        <%--<c:<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<--%>

        <div class="contactInformation" style="overflow-y: scroll">
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
            <label>Rodion Starodubenko: +77003996925</label>
        </div>
    </div>

    <div>
        <form method="post">
            <input type="submit" value="Go to DataBase">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a></li>
                <li class="next"><a href="#">Newer &rarr;</a></li>
            </ul>
            <input type="hidden" name="actionName" value="opendbaction">
        </form>
    </div>

    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Registration
    </button>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Registration form</h4>
                </div>
                    <%--<c:forEach var="title" items="${titlesOfColumns}">--%>
                <form method="post">
                    <div class="registration">
                        <div class="form-group">
                            <label for="Login" class="label">Login</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivanov99" class="form-control"
                                   id="Login">
                        </div>
                        <div class="form-group">
                            <label for="Password" class="label">Password</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivanov9" class="form-control"
                                   id="Password">
                        </div>
                        <div class="form-group">
                            <label for="Firsname" class="label">Firsname</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivan" class="form-control"
                                   id="Firsname">
                        </div>
                        <div class="form-group">
                            <label for="Lastname" class="label">Lastname</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivanov" class="form-control"
                                   id="Lastname">
                        </div>
                        <div class="form-group">
                            <label for="Middlename" class="label">Middlename</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivanovich" class="form-control"
                                   id="Middlename">
                        </div>
                        <div class="form-group">
                            <label for="Address" class="label">Address</label>
                            <input type="text" name="ValuesForInsertToDB" value="Ivanova-32" class="form-control"
                                   id="Address">
                        </div>
                        <div class="form-group">
                            <label for="Telephone" class="label">Telephone</label>
                            <input type="text" name="ValuesForInsertToDB" value="87212965896" class="form-control"
                                   id="Telephone">
                        </div>
                        <div class="form-group">
                            <label for="Mobilephone" class="label">Mobilephone</label>
                            <input type="text" name="ValuesForInsertToDB" value="87007778958" class="form-control"
                                   id="Mobilephone">
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

    <script src="script/indexScript.js"></script>
    <script src="webjars/jquery/1.11.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
    </html>
</fmt:bundle>