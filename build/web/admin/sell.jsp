
<%@include file="adminHeader.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="assets/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="assets/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="assets/bootstrap.min.js"></script> 

        <link rel="stylesheet" href="assets/w3.css">
        <title>Sell</title>
    </head>
    <body>
        <div class="inside-banner">
            <div class="container"> 
                <span class="pull-right"><a href="#">Home</a> / Contact Us</span>
                <h2>Contact Us</h2>
            </div>
        </div>
        <div class="container">
            <div class=" w3-card" style="margin-top:40px">


                <form name="form2" action="actionSell.jsp" method="POST">

                    <table border="0" class="w3-table-all w3-hoverable table-bordered">

                        <tbody>


                            <!--  <tr>
                                  <td>Type</td>
                                        <td>
                                            <select class="w3-select" name="option">
                                                <option value="" disabled selected>Choose your option</option>
                                                <option value="1">Apartment</option>
                                                <option value="2">Land</option>
                                                <option value="3">Bangalow</option>
                                                <option value="4">Commercial Property</option>
                                            </select>
        
                                        </td>
                              </tr>  -->
                            <tr>
                                <td>Town/City</td>

                                <td><input class="form-control" type="text" name="town" value="" size="20" 
                                           data-validation="length alphanumeric" 
                                           data-validation-length="max20"
                                           data-validation-error-msg="Maximum length of characters for Town is 20"

                                           /></td>
                            </tr>
                            <tr>
                                <td>Heading</td>
                                <td><input class="form-control" type="text" name="heading" value="" size="30" 
                                           data-validation="length alphanumeric" 
                                           data-validation-length="max30"
                                           data-validation-error-msg="Maximum length of characters for Heading is 30"

                                           /></td>
                            </tr>

                            <tr>
                                <td>Description</td>
                                <td><textarea class="form-control" name="description" rows="4" cols="28" 
                                              data-validation="length alphanumeric" 
                                              data-validation-length="max50"
                                              data-validation-error-msg="Maximum length of characters for Description is 50"

                                              /></textarea></td>
                            </tr>

                            <tr>
                                <td>Price</td>

                                <td><input class="form-control" type="text" name="price" value="" size="30" 
                                           data-validation="length" data-validation-length="max20" 
                                           data-validation-error-msg="The Price has to be an Number.(Eg.250000)"

                                           /></td>
                            </tr>

                            <tr>
                                <td>Contact Name</td>
                                <td><input class="form-control" type="text" name="name" value="" size="30" 
                                           data-validation="length alphanumeric" 
                                           data-validation-length="max20"
                                           data-validation-error-msg="Maximum length of characters for name is 20"
                                           /></td>
                            </tr>



                            <tr>
                                <td>Email</td>
                                <td><input class="form-control" type="text" name="email" value="" size="30" data-validation="email"/></td>
                            </tr>

                            <tr>
                                <td>Telephone No</td>
                                <td><input class="form-control" type="text" name="tel" value="" size="30" 
                                           data-validation="length" data-validation-length="9-10" 
                                           data-validation-error-msg="Telephone Number has to be an Number(9-10 numbers)"/></td>
                            </tr>


                            <tr>
                                <td></td>
                                <td><input type="submit" class="w3-btn w3-block w3-teal " value="Post Add" name="btn2" /></td>
                            </tr>

                        </tbody>
                    </table>
                </form>


            </div>



        </div>
    </body>
</html>

<script src="assets/jquery.form-validator.min.js"></script>
<script>
    $.validate({
        lang: 'en'
    });
</script>


<%@include file="footer.jsp" %>