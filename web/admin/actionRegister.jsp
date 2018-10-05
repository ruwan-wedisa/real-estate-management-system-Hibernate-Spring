<%@page import="model.admin"%>
<%@page import="model.login"%>
<%@page import="controller.logReg"%>  

<jsp:useBean id="obj" class="model.admin">  
</jsp:useBean>  
<jsp:useBean id="obj2" class="model.login">  
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<jsp:setProperty property="*" name="obj2"/>
  
<%  
int i = logReg.registerUserTableAdminUser(obj2, obj);
if(i>0) { 

out.print("<script>alert('Successfully Registered!');window.location='userAccounts.jsp';</script>");
}

%>  
