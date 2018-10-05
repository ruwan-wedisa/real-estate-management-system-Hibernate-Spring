


<div class="footer">

    <div class="container ">



        <div class="row">
            <div class="col-lg-4 col-sm-4">
                <h4>Information</h4>
                <ul class="row">
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="about.jsp">About</a></li>
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="agents.jsp">Agents</a></li>         
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="blog.jsp">Blog</a></li>
                    <li class="col-lg-12 col-sm-12 col-xs-3"><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>

            <!-- <div class="col-lg-3 col-sm-3">
                     <h4>Newsletter</h4>
                     <p>Get notified about the latest properties in our marketplace.</p>
                     <form class="form-inline" role="form">
                             <input type="text" placeholder="Enter Your email address" class="form-control">
                                 <button class="btn btn-success" type="button">Notify Me!</button></form>
             </div> -->

            <div class="col-lg-4 col-sm-4">
                <h4>Follow us</h4>
                <a href="#"><img src="images/facebook.png" alt="facebook"></a>
                <a href="#"><img src="images/twitter.png" alt="twitter"></a>
                <a href="#"><img src="images/linkedin.png" alt="linkedin"></a>
                <a href="#"><img src="images/instagram.png" alt="instagram"></a>
            </div>

            <div class="col-lg-4 col-sm-4">
                <h4>Contact us</h4>
                <p><b>RAD CST group I</b><br>
                    <span class="glyphicon glyphicon-map-marker"></span> Uva Wellassa University, Badulla <br>
                    <span class="glyphicon glyphicon-envelope"></span> realEstateSriLanka@gmail.com<br>
                    <span class="glyphicon glyphicon-earphone"></span> 0110944552</p>
            </div>
        </div>
        <p class="copyright">Copyright 2017. All rights reserved.	</p>


    </div></div>




<!-- Modal -->
<div id="loginpop" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="row">
                <div class="col-sm-6 login">
                    <h4>Login</h4>
                    <form class="" role="form" name="form2" action="loginCodeJsp.jsp" method="POST">
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputEmail2">User Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail2" name="loginUN" placeholder="Enter userName">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputPassword2">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword2" name="loginPW" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember me
                            </label>
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </form>          
                </div>
                <div class="col-sm-6">
                    <h4>New User Sign Up</h4>
                    <p>Join today and get updated with all the properties deal happening around.</p>
                    <button type="submit" class="btn btn-info"  onclick="window.location.href = 'register.jsp'">Join Now</button>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- /.modal -->



</body>
</html>



