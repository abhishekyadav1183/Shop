<%-- 
    Document   : AdminPage
    Created on : Aug 21, 2017, 11:49:31 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%// HttpSession session1=request.getSession(false); %>
 <%--<%=session1.getAttribute("adminsession") %>--%>
 <%=session.getAttribute("adminsession") %>
 <%if(session.getAttribute("adminsession")==null){
     RequestDispatcher dispatcher=request.getRequestDispatcher("LoginSignup.jsp");
     dispatcher.forward(request, response);
 }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
          <meta name="viewport" content="width=device-width, initial-scale=1">      
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script> 
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
    </head>
    <body ng-app="Admin" ng-controller="AdminCtl">
        <div class="navbar-fixed">
        <nav>
            <div class="nav-wrapper fixed indigo darken-1">
                
                <a href="#!" class="brand-logo center"><i class="material-icons">shop_two</i>Shop</a>
                <ul class="left hide-on-med-and-down">
                    <li><a href="#!" class="btn waves-effect waves-red indigo darken-1 z-depth-5">About Us</a></li>
                    <li><a href="#!" class="btn waves-effect waves-yellow indigo darken-1 z-depth-5 ">Contact Us</a></li>
                    
                </ul>
               
                <ul class="right" >
                    <li>
                    <li><a href="#!" class="btn-floating waves-effect waves-red red darken-1 z-depth-5 pulse " ng-click="Logout()"><i class="material-icons">lock</i></a></li>
                    
                </ul>
        
             
           </div>
        </nav>
        </div>
         <div class="container">
         <div class="row">
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#AddCategory">Add Category</a></div></div>
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#ViewCategory">View Category</a></div></div>
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#ApproveProduct">Approve Product</a></div></div>
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#ViewUser">View Users</a></div></div>
         </div>
         </div>       
        
        <div id="AddCategory" class="modal">
        <div class="modal-content">
         <h4>Add Category</h4>
         <!--===================================-->
         <div class="row">
    <form>
      <div class="row">
        <div class="input-field">
          <i class="material-icons prefix">store</i>
          <input id="icon_prefix" type="text" class="validate">
          <label for="icon_prefix">Category Name</label>
        </div>
       
      </div>
    </form>
  </div>
         <!--=======================================-->
         
        </div>
        <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
        </div>
        </div>
        
        
        
        <script>
            $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
            $('.modal').modal();
            });   
          var app=angular.module("Admin",[]);
          app.controller("AdminCtl",function($scope,$http){
             
           $scope.Logout=function(){
                let logouturl="LoginSignup?action=logout";
                console.log("LogOut function Working");
                $http.get(logouturl).then(function(data){
                let result=data.data;
                //console.log(data.data+" "+result);    
                //window.location.href="LoginSignup.jsp";
                if(result.length>0){
                console.log("LogOut Success");
                Materialize.toast('Log Out Success',6000,'green');        
                Materialize.toast('Re Login',6000,'red');
                setInterval(function(){window.location.href=result;},3000);
                 }
                else{
                Materialize.toast('Try Again To LogOut',6000,'red');    
                 }
                 });
        
    }
          });
         function logout(){
      
     
             
  }
        </script>
    </body>
</html>
