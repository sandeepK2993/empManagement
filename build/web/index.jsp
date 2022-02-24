<%@page import="com.emp_management.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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

    <body>
        <%@include file="layout/header.jsp" %>

        <main class="align-items-center primary_background tetx-white p-5">
            <div clss="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary_background text-white text-center">
                                <span class="fa fa-user-circle fa-3x"></span><br>
                                <h3>Login Now</h3><br>
                            </div>
                            <div class="card-body">
                                <%
                                    Message m = (Message) session.getAttribute("msg");
                                    if (m != null) {
                                %>
                                <div class="alert <%= m.getCssClass()%>" role="alert">
                                    <%= m.getContent()%>
                                </div>
                                <%
                                        session.removeAttribute("msg");
                                    }
                                %>
                                <form action="LoginServlet" method="post">
                                    <div class="form-group">
                                        <label>User-Id/Mobile</label>
                                        <input type="text" class="form-control" name="userid" id="userid" placeholder="Enter Your User-Id/Mobile">
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password"class="form-control" name="password" id="password" placeholder="Enter Your Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-success btn-lg" name="submit" value="Login">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
                                
        <%@include file="layout/footer.jsp" %>
        <script>
            $(document).ready(function(){
                setTimeout(function() {
                    $('.alert').fadeOut('fast');
                }, 3000);
            })
        </script>
