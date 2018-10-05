<%@page import="controller.userAccount"%>
<%@page import="java.util.List"%>
<%@page import="model.admin"%>
<%@page import="model.login"%>

<jsp:useBean id="obj" class="model.admin">  
</jsp:useBean> 
<jsp:useBean id="obj2" class="model.login">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
<jsp:setProperty property="*" name="obj2"/> 
 <%  
List<admin> a=userAccount.getUserDetailsAdmin(obj);
List<login> b=userAccount.getUserDetailsLogin(obj2);

if(!(a.isEmpty()) && !(b.isEmpty())){
    
    
    out.print("<script>alert('Succesfully displayed!');</script>");
  

    response.sendRedirect("userAccounts.jsp");
    
    
} else{
    out.print("<script>alert('no accounts to show');</script>");
} 
  
%>  