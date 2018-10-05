<%@page import="controller.deactivateuser"%>
<%@page import="java.util.List"%>

<%@page import="model.login"%>

<jsp:useBean id="obj2" class="model.login">  
</jsp:useBean>  

<jsp:setProperty property="*" name="obj2"/> 

<%
    String id=request.getParameter("uid");
    int x = Integer.parseInt(id);
//    Class.forName("com.mysql.jdbc.Driver");
//    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/realestate", "root", "");
//    Statement stmt = con.createStatement();
//    String id=request.getParameter("id");
//    String query = "update login set activated ='0' where id='" + id + "'";
//    stmt.executeUpdate(query);
//    response.sendRedirect("userAccounts.jsp");


if(x == 1){

deactivateuser.updateActivateAdminDeativate(obj2);
//if(i>0) { 
//
}
else if(x ==2){
    deactivateuser.updateActivateCustomerDeativate(obj2);
}
out.print("<script>alert('Successfully Posted!');window.location='userAccounts.jsp';</script>");

%>  