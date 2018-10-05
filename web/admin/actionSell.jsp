<%@page import="model.ads"%>
<%@page import="model.login"%>
<%@page import="controller.sellAdd"%>  

<jsp:useBean id="obj" class="model.ads">  
</jsp:useBean>  
<jsp:useBean id="obj2" class="model.login">  
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<jsp:setProperty property="*" name="obj2"/>
  
<%  
int i = sellAdd.postAddSell(obj, obj2);
if(i>0) { 

out.print("<script>alert('Successfully Posted!');window.location='index.jsp';</script>");
}
%>  