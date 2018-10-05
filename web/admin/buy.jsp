<%@page import="java.util.List"%>
<%@page import="controller.buy"%>
<%@include file="adminHeader.jsp" %>
<%@page import="model.ads"%>
<jsp:useBean id="obj" class="model.ads">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  

<!-- banner -->
<div class="inside-banner">
    <div class="container"> 
        <span class="pull-right"><a href="index.jsp">Home</a> / Buy, Sale & Rent</span>
        <h2>Buy,Don't wait to Buy..! Just Buy and wait..</h2>
    </div>
</div>
<!-- banner -->


<div class="container">
    <div class="properties-listing spacer">

        <div class="row">

            <div class="col-lg-12 col-sm-12">
                <div class="sortby clearfix">
                    <%
                    List<ads> a=buy.getSellingDetails(obj);
                    for(ads item : a){ %>


                    <!-- properties -->
                    <div class="col-lg-4 col-sm-6">
                        <div class="properties">
                            <div class="image-holder"><img src="images/New folder/<%= item.getImagename() %>" class="img-responsive" alt="properties">

                            </div>
                            <h4><%= item.getTown() %></h4>
                            <p class="price"> Rs.<%= item.getPrice() %>.00</p>
                            <a class="btn btn-primary" href="property-detail.jsp?id=<%= item.getId()%>" >View Details</a>


                        </div>
                    </div>

 

                       <% }
    %>
                </div>

            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>