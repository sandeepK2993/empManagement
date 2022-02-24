
        <%@page import="com.emp_management.entities.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary_background">
            <a class="navbar-brand" href="#"><span class="fa fa-users"></span>&nbsp;Employee Management</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
                <%
                    User u=(User)session.getAttribute("currentUser");
                    if(u!=null){
                %>
                <a href="LogoutServlet" class="btn btn-outline-warning text-white" >Logout</a>
                <% }else{ %>
                <a href="index.jsp" class="btn btn-outline-warning text-white" >LogIn</a>
                <% } %>
                
            </div>
        </nav>