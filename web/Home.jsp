<%-- 
    Document   : Home
    Created on : Feb 17, 2022, 3:46:32 PM
    Author     : HP
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emp_management.entities.Employees"%>
<%@page import="com.emp_management.dao.EmployeesDao"%>
<%@page import="com.emp.management.helper.ConectionProvider"%>
<%@page import="com.emp_management.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!--CSS Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--Font Awsome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--Custom Css-->
    <link href="assets/css/customCss.css" rel="stylesheet" type="text/css"/>
    <style>

    </style>
    <body>
        <%@include file="layout/header.jsp" %>
        <main>
            <div class="container py-3">
                <h3><%= user.getName()%></h3>
                <p class="lead text-muted"><%=user.getUserid()%></p>
            </div>
            <div class="jumbotron">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="list-group">
                                <a href="#" class="list-group-item list-group-item-action active">
                                    Employee
                                </a>
                                <a href="#" class="list-group-item list-group-item-action disabled">Dapibus ac facilisis in</a>
                                <a href="#" class="list-group-item list-group-item-action disabled">Morbi leo risus</a>
                                <a href="#" class="list-group-item list-group-item-action disabled">Porta ac consectetur ac</a>
                                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-light">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Emp Code</th>
                                            <th>Name</th>
                                            <th>Father Name</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Gender</th>
                                            <th>DOB</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            EmployeesDao emp=new EmployeesDao(ConectionProvider.getconnection());
                                            ArrayList<Employees> employees=emp.getAllEmployees();
                                            for(int i = 0; i < employees.size(); i+=1){
                                        %>
                                        <tr>
                                            <td><%= employees.get(i).getName() %></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <%@include file="layout/footer.jsp" %>
    </body>
</html>
