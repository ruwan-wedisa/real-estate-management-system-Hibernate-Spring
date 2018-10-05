<%@page import="controller.buy"%>
<%@page import="java.util.List"%>
<%@page import="model.ads"%>

<jsp:useBean id="obj" class="model.ads">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  

 <%  
List<ads> a=buy.getSellingDetails(obj);

if(!a.isEmpty()){
    ads add=a.get(0);
    session.setAttribute("id",add.getId());
    session.setAttribute("imgName",add.getImagename());
    session.setAttribute("town",add.getTown());
    session.setAttribute("price",add.getPrice());
    
    out.print("<script>alert('Succesfully Loaded ads!');</script>");
  

    response.sendRedirect("buy.jsp");
    
    
} else{
    out.print("<script>alert('no post to show');</script>");
} 
  
%>  