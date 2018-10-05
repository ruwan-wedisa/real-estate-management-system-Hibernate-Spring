<%@page import="java.util.List"%>
<%@page import="model.login"%>
<%@page import="model.admin"%>
<%@page import="model.customer"%>
<%@page import="model.message"%>
<%@page import="controller.logReg"%>
<jsp:useBean id="obj" class="model.login">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  

 <%  
List<login> a=logReg.getLoginStatus(obj);



if(!a.isEmpty()){
    login u=a.get(0);
    session.setAttribute("id",u.getId());
    session.setAttribute("type",u.getUserCategory());
    session.setAttribute("username",u.getUserName());
    out.print("<script>alert('Succesfully Logged In!');</script>");
    if(u.getUserCategory()==1){
        response.sendRedirect("admin/index.jsp");
    }else{
        response.sendRedirect("customer/index.jsp");
    }
    
} else{
    out.print("<script>alert('Incorrect username or password');window.location.href='index.jsp';</script>");

} 
  
%>  