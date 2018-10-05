<%@include file="adminHeader.jsp" %>
<%@page import="java.util.List"%>
<%@page import="controller.userAccount"%>
<%@page import="model.customer"%>
<%@page import="model.admin"%>
<%@page import="model.login"%>

<jsp:useBean id="obj" class="model.admin">  
</jsp:useBean>  
<jsp:useBean id="obj2" class="model.login">  
</jsp:useBean>  
<jsp:useBean id="obj3" class="model.customer">  
</jsp:useBean> 
<jsp:setProperty property="*" name="obj"/>  
<jsp:setProperty property="*" name="obj2"/>
<jsp:setProperty property="*" name="obj3"/>



<%-- 
    Document   : useraccounts
    Created on : Nov 16, 2017, 8:01:13 AM
    Author     : SachithrE
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- <link rel="stylesheet" href="C:\Users\SachithrE\Documents\NetBeansProjects\bootstrap.min.css"> -->
        <        <link rel="stylesheet" href="assets/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="assets/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="assets/bootstrap.min.js"></script> 

        <link rel="stylesheet" href="assets/w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <title>User Accounts</title>



    <div class="inside-banner">
        <div class="container"> 
            <span class="pull-right"><a href="#">Home</a> / User Account Details</span>
            <h2>User Account Details</h2>
        </div>
    </div>


    <div class="container">
        <div class="spacer">
            <div class="row register">
                <div class="col-lg-6 col-lg-offset-2 col-sm-6 col-sm-offset-2 col-xs-12 ">
                    <h1>Admin Account Details</h1>
                    <table class="table table-bordered table-hover" >
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Admin Name</th>
                                <th>Address</th>
                                <th>NIC</th>
                                <th>Telephone Number</th>
                                <th>email</th>
                                <th>Status</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <%
                            int q=0;
                            List<admin> a = userAccount.getUserDetailsAdmin(obj);
                            List<login> b = userAccount.getUserDetailsLogin(obj2);
                            for (admin item : a) { %>


                        <%
//                            ResultSet rs1 = stmt.executeQuery(query1);
//                            while (rs1.next()) {
//
                                out.println("<tr>");
                                out.println("<td>" + item.getId() + "</td>");
                                out.println("<td>" + item.getAdminName() + "</td>");
                                out.println("<td>" + item.getAdminAddress() + "</td>");
                                out.println("<td>" + item.getNic() + "</td>");
                                out.println("<td>" + item.getTel() + "</td>");
                                out.println("<td>" + item.getEmail() + "</td>");
//
//                                int act = rs1.getInt("activated");
                               q = item.getId();
//                                if (act == 1) {
//                                    out.println("<td>Activated</td>");
//                                    String id = rs1.getString("login.id");
                            }
                        %>

                        <% for (login item2 : b) { %>

                        <%
                            //int act = item.get
//                        } else if (act == 0) {

                            int x = item2.getActivated();

                            if (x == 0) {
                                out.println("<td>Deactivated</td>");
                                out.println("<td><a  href=activate.jsp?id=" + q + "&uid=1&un='"+item2.getUserName()+"'&pw='"+item2.getPassword()+"'><button class=\"btn btn-success\">Activate</button></a></td>");

                                break;

                            } else if (x == 1) {
                                out.println("<td>Activated</td>");
                                out.println("<td><a  href=deactivate.jsp?id=" + q + "&uid=1&un='"+item2.getUserName()+"'&pw='"+item2.getPassword()+"'> <button class=\"btn btn-success\">Deactivate</button></a></td>");
                                break;
                            }

//                            String id = rs1.getString("login.id");
                        %>




                        <% }

                        %>   
                        <%//                                }
                   //
                            out.println("</tr>");
                   //
                   //                            }
                   //                            rs1.close();
                        %>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="spacer">
            <div class="row register">
                <div class="col-lg-6 col-lg-offset-2 col-sm-6 col-sm-offset-2 col-xs-12" >

                    <h1>Customer Account Details</h1>




                    <table class="table table-bordered table-hover" >
                        <thead>
                            <tr>
                                <th>ID</th>                              
                                <th>Customer Name</th>
                                <th>Address</th>
                                <th>NIC</th>
                                <th>Telephone Number</th>
                                <th>email</th>
                                <th>Status</th>
                                <th>Edit</th>
                            </tr>
                        </thead>


                        <%
                            int y=0;
                            List<customer> c = userAccount.getUserDetailsCustomer(obj3);
                           
                            for (customer item3 : c) { %>


                        <%
//                            ResultSet rs1 = stmt.executeQuery(query1);
//                            while (rs1.next()) {
//
                                out.println("<tr>");
                                out.println("<td>" + item3.getId() + "</td>");
                                out.println("<td>" + item3.getCustName() + "</td>");
                                out.println("<td>" + item3.getAddress() + "</td>");
                                out.println("<td>" + item3.getNic() + "</td>");
                                out.println("<td>" + item3.getTel() + "</td>");
                                out.println("<td>" + item3.getEmail() + "</td>");
                                
                                y = item3.getId();
//                                int act = rs1.getInt("activated");
//
//                                if (act == 1) {
//                                    out.println("<td>Activated</td>");
//                                    String id = rs1.getString("login.id");
                            }
                        %>


                        <% for (login item4 : b) { %>

                        <%
                            //int act = item.get
//                        } else if (act == 0) {

                            int z = item4.getActivated();

                            if (z == 0) {
                                out.println("<td>Deactivated</td>");
                                out.println("<td><a  href=activate.jsp?id=" + y + "&uid=2&un='"+item4.getUserName()+"'&pw='"+item4.getPassword()+"'><button class=\"btn btn-success\">Activate</button></a></td>");

                                break;

                            } else if (z == 1) {
                                out.println("<td>Activated</td>");
                                out.println("<td><a  href=deactivate.jsp?id=" + y + "&uid=2&un='"+item4.getUserName()+"'&pw='"+item4.getPassword()+"'><button class=\"btn btn-success\"> Deactivate</button></a></td>");
                                break;
                            }
//                            String id = rs1.getString("login.id");
                        %>




                        <% }

                        %>   
                        <%//                                }
                   //
                            out.println("</tr>");
                   //
                   //                            }
                   //                            rs1.close();
%>



                    </table>
                </div>

                <div class="col-lg-6 col-lg-offset-3 col-sm-6 col-sm-offset-3 col-xs-12" >
                    <a  href="register.jsp"><button class="btn btn-success" >Add a new Admin Account</button></a>
                </div>
            </div>
        </div>
    </div>


    <%@include file="footer.jsp" %>