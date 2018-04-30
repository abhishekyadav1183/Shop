<%-- 
    Document   : UserPage
    Created on : Aug 21, 2017, 11:49:45 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% HttpSession session1=request.getSession(false); %>
<%=session1.getAttribute("usersession") %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title
              <meta name="viewport" content="width=device-width, initial-scale=1">      
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script> 
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
          <link href="materialize/css/navstyle.css" rel="stylesheet" type="text/css"/>
          
    </head>
    
        
        <body  id="style-10">
        <!--====================================== side nav-->
          <ul id="slide-out" class="side-nav">
    <li><div class="user-view">
      <div class="background">
        <img src="images/background.jpg">
      </div>
      <a href="#!user"><img class="circle" src="images/profile.png"></a>
      <a href="#!name"><span class="white-text name">Abhishek Yadav</span></a>
      <a href="#!email"><span class="white-text email"></span></a>
    </div></li>
    
    <li><a href="#!"><i class="material-icons">cloud</i>Home</a></li>
    <li><a href="#!">About Us</a></li>
    <li><div class="divider"></div></li>
    <li><a class="waves-effect" href="#!">Contact Us</a></li>
    <li><a class="waves-effect" href="#!">Login & Sign Up</a></li>
    
  </ul>
        
        
       <nav>
            <div class="nav-wrapper fixed  indigo darken-1">
                
                <a href="#!" class="brand-logo center"><i class="material-icons">shop_two</i>Shop</a>
               
                <ul class="right" >
                    <li>
                        <a class="btn-floating red darken-3 dropdown-button" href="#" data-activates="dropdown"><i class="mdi-navigation-arrow-drop-down right material-icons">local_grocery_store </i></a><span class="pro_count btn-floating red darken-3">4</span></li>
                        
                </ul>
        
               <ul id="dropdown" class="right dropdown-content hide-on-med-and-down">
                  
   
                        <li><a href="#">Inbox<span class="badge">12</span></a></li>
                        <li><a href="#!">Unread<span class="new badge">4</span></a></li>
                        <li><a href="#">Sent</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Outbox<span class="badge">14</span></a></li>
      </ul>
           </div>
        </nav>
        
        <script>
               $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
               $('.collapsible').collapsible();
    
        </script>
    </body>
</html>
