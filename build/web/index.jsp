<%-- 
    Document   : index
    Created on : Aug 10, 2017, 11:50:30 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Shop</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">      
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script> 
      <style>
          .pro_count{
              background: none repeat scroll 0 0;
              /*border-radius: 50%;*/
              /*color: #ff0;*/
              font-size:13px;
              height: 10px;
              width: 10px;
              /*padding-top: -10px;*/
              position: relative;
              right: 30px;
              text-align: center;  
              top: -16px;
              
               display: inline;
               padding: 4px 10px; /* Padding por defecto */
/*font-size: 16px;   Tamaño fuente por defecto */
               line-height: 10px; /* Tamaño de linea */
/*text-align: center;*/
               vertical-align: middle;
               
                  
          }
          
          
           body {
    display: flex;
    min-height: 100vh;
    flex-direction: column;
  }

  main {
    flex: 1 0 auto;
  }
      </style>
      
   </head>
   <body>
       <header>
        <ul id="slide-out" class="side-nav">
    <li><div class="user-view">
      <div class="background">
        <img src="images/background.jpg">
      </div>
      <a href="#!user"><img class="circle" src="images/profile.png"></a>
      <a href="#!name"><span class="white-text name">Abhishek Yadav</span></a>
      <a href="#!email"><span class="white-text email">abhishekyadav1183@gmail.com</span></a>
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
                <a href="#" data-activates="slide-out" class="button-collapse left"><i class="material-icons">menu</i></a>
    
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
            
       </header>
          
                    
<!--        
        ============================================
        ===========================================-->
<main>

<div class="row">
    <form class="col s12 col m12">
      <div class="row">
        <div class="input-field col s12 col m6">
          <i class="material-icons prefix">account_circle</i>
          <input id="icon_prefix" type="text" class="validate">
          <label for="icon_prefix">First Name</label>
        </div>
        <div class="input-field col s12 col m6">
          <i class="material-icons prefix">phone</i>
          <input id="icon_telephone" type="tel" class="validate">
          <label for="icon_telephone">Telephone</label>
        </div>
      </div>
    </form>
  </div>
       
</main>             
                     
<!--   ===========================================
   ===========================================
   ===========================================-->

 


      <footer class="page-footer indigo darken-2">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">About Us</h5>
                
                <img src="images/profile.png" class="circle responsive-img left" width="40%">
                <img src="images/profile.png" class="circle responsive-img right" width="40%">
               
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Contact Us</h5>
                <ul >
                  <li><a class="grey-text text-lighten-3 btn waves-effect waves-red indigo darken-1 z-depth-5" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3 btn waves-effect waves-red indigo darken-1 z-depth-5" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3 btn waves-effect waves-red indigo darken-1 z-depth-5" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3 btn waves-effect waves-red indigo darken-1 z-depth-5" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2017 Shop, All rights reserved.
            <a class="grey-text text-lighten-4 right btn red darken-1" href="#!">More Links</a>
            </div>
          </div>
        </footer>

<div class="fixed-action-btn toolbar">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">insert_chart</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">format_quote</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">publish</i></a></li>
      <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">attach_file</i></a></li>
    </ul>
  </div>
        
    <script> $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  $('.collapsible').collapsible();</script>
    </body>
    
    
</html>

