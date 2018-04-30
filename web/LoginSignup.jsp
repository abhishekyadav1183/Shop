<%-- 
    Document   : LoginSignup
    Created on : Aug 16, 2017, 5:13:20 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">      
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script> 
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
          <link href="materialize/css/navstyle.css" rel="stylesheet" type="text/css"/>
          <script src="materialize/js/allscript.js" type="text/javascript"></script>
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
      <a href="#!email"><span class="white-text email">abhishekyadav1183@gmail.com</span></a>
    </div></li>
    
    <li><a href="#!"><i class="material-icons">cloud</i>Home</a></li>
    <li><a href="#!">About Us</a></li>
    <li><div class="divider"></div></li>
    <li><a class="waves-effect" href="#!">Contact Us</a></li>
    <li><a class="waves-effect" href="#!">Login & Sign Up</a></li>
    
  </ul>
        <!--==========================================end side nav-->
        <nav>
            <div class="nav-wrapper fixed  indigo darken-1">
                
                <a href="#!" class="brand-logo center"><i class="material-icons">shop_two</i>Shop</a>
                <ul class="left hide-on-med-and-down">
                    <li><a href="#!" class="btn waves-effect waves-red indigo darken-1 z-depth-5">About Us</a></li>
                    <li><a href="#!" class="btn waves-effect waves-yellow indigo darken-1 z-depth-5 ">Contact Us</a></li>
                    <li><a href="#!" class="btn waves-effect waves-red indigo darken-1 z-depth-5 pulse" >Login Sign Up</a></li>
                    
                </ul>
                <ul class="hide-on-med-and-up">
                    <li> <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a></li>
    
                </ul>
                <ul class="right" >
                    <li>
                        <a class="btn-floating red darken-3 dropdown-button" href="#" data-activates="dropdown"><i class="mdi-navigation-arrow-drop-down right material-icons">local_grocery_store </i></a><span class="pro_count btn-floating red darken-3">0</span></li>
                        
                </ul>
        
               <ul id="dropdown" class="right dropdown-content hide-on-med-and-down">
                  
   
                        <li><a href="#">Inbox<span class="badge">12</span></a></li>
                        <li><a href="#!">Unread<span class="new badge">4</span></a></li>
                        <li><a href="#">Sent</a></li>
                        <li class="divider"></li>
                        <li><a href="#">PAYMENT<span class="badge">3</span></a></li>
      </ul>
           </div>
        </nav>
     
                    

    
        
        <!--===================================================-->
        <div class="container">
            <div class="row ">
            <div class="col s12 col m12 card-panel ">
                <ul class="tabs">
                    <li class="tab col s4"><a href="#login">LOGIN</a></li>
                    <li class="tab col s4 "><a class="" href="#signup">SIGN UP</a></li>
                    <li class="tab col s4 "><a class="" href="#supplier">SIGN UP AS SUPPLIER</a></li>
                         
                 </ul>
            </div>
            <div class="card-panel">
                               
            <div id="login">
                
                <form id="loginform" class="col s12 col m12 card-panel" method="post" action="LoginSignup">
                    <div class="a">
                         
                         </div>  
                
                    
                 <div class="row">
                     <input type="hidden" value="login" name="action">
                    <div class="input-field col s12 col m6 ">
                         <i class="material-icons prefix">account_circle</i>
                         <input id="icon_prefix" type="text" name="login" class="validate" required>
                         <label for="icon_prefix">User Name</label>
                    </div>
                    <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">security</i>
                     <input id="icon_telephone" type="password" name="login" class="validate" required>
                     <label for="icon_telephone">Password</label>
                    </div>
                     
                     <div class="col s12 col m12 center-align">
                     
                         <button   onclick="log()" type="submit" class="validate btn-large btn-floating red waves-effect waves-light pulse"><i class="material-icons prefix">power_settings_new</i></button>
                     </div> 
                 </div>
                    <div class="dog-list"></div>
                    
                </form>
            </div>
                <div id="signup" >
                    <form id="signupform" class="col s12 col m12 card-panel" method="post" action="LoginSignup">
                         <div class="dog-list1">  </div>   
                        
                        <input type="hidden" value="signup" name="action">
                 <div class="row">
                    <div class="input-field col s12 col m6 ">
                         <i class="material-icons prefix">account_circle</i>
                         <input id="First_Name" name="signup" type="text" class="validate "required>
                         <label for="First_Name">First Name</label>
                    </div>
                    <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">account_box</i>
                     <input id="last_name" name="signup" type="text" class="validate"required>
                     <label for="last_name">Last Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">person</i>
                     <input id="username" name="signup" type="text" class="validate"required>
                     <label for="username">User Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">security</i>
                     <input id="password" name="signup" type="password" class="validate"required>
                     <label for="password">Password</label>
                    </div>
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">mail</i>
                     <input id="Email_id" name="signup" type="email" class="validate"required>
                     <label for="Email_id">Email ID</label>
                    </div>
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">cake</i>
                     <input id="dob" name="signup" type="text" class="datepicker">
                     <label for="dob">DOB</label>
                    </div>
                     
                      <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" name="signup" type="tel" class="validate" pattern="[7-9]{1}[0-9]{9}"required>
                        <label for="icon_telephone">Telephone</label>
                      </div>
                     
                      <div class="col s6 col m6 center-align ">
                         <div class="switch">
                             <label>Male<input type="checkbox"name="sex"><span class="lever"></span>Female</label>
                         </div>
                      </div>
                      <div class='col s12 m12'>
                        <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">add_location</i>    
                        <input id="Address" type="text" name="signup" data-length="15" maxlength="30"required>
                        <label for="Address">Address</label>
                        </div>
                          
                          <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">location_city</i>    
                        <input id="State" type="text" name="signup" data-length="10" maxlength="13"required>
                        <label for="State">State</label>
                        </div>
                          
                          
                      </div>  
                        <div class="input-field col s12 col m12">
                         <select class="icons" name="signup"required>
                         <option value="" disabled selected>Choose your Country</option>
                         <option value="India" data-icon="images/india.gif" class="circle">India</option>
                         <option value="Pakistan" data-icon="images/Pakistan.png" class="circle">Pakistan</option>
                         <option value="America" data-icon="images/American.png" class="circle">America</option>
                         <option value="Wadia" data-icon="images/wadia.jpg" class="circle">Wadia</option>
                        </select>
                        <label>Select Country</label>
                        </div>  
                     
                     <div class="col s12 col m12 center-align">
                     
                         <button onclick="log1()" type="submit" class="validate btn-floating red waves-effect btn-large pulse"><i class="material-icons prefix">lock</i></button>
                     </div> 
                 </div>
                    
                </form>
                </div>
                
                
                
            <!--</div>-->
             <div id="supplier" >
                    <form id="supplierform" class="col s12 col m12 card-panel" method="post" action="LoginSignup">
                          <input type="hidden" value="supplier" name="action">
                           <div class="dog-list2">  </div> 
                            <div class="row">
                            <div class="input-field col s12 col m6 ">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="First_Name" name="signup1" type="text" class="validate"required>
                            <label for="First_Name">First Name</label>
                            </div>
                    <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">account_box</i>
                     <input id="last_name" name="signup1" type="text" class="validate"required>
                     <label for="last_name">Last Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">person</i>
                     <input id="username" name="signup1" type="text" class="validate"required>
                     <label for="username">User Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">security</i>
                     <input id="password" name="signup1" type="password" class="validate"required>
                     <label for="password">Password</label>
                    </div>
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">mail</i>
                     <input id="Email_id" name="signup1" type="email" class="validate"required>
                     <label for="Email_id">Email ID</label>
                    </div>
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">cake</i>
                     <input id="dob" name="signup1" type="text" class="datepicker">
                     <label for="dob">DOB</label>
                    </div>
                     
                      <div class="input-field col s6">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" name="signup1" type="tel" class="validate" pattern="[7-9]{1}[0-9]{9}"required>
                        <label for="icon_telephone">Telephone</label>
                      </div>
                     
                      <div class="col s6 col m6 center-align ">
                         <div class="switch">
                             <label>Male<input type="checkbox"name="sex1"><span class="lever"></span>Female</label>
                         </div>
                      </div>
                      <div class='col s12 m12'>
                        <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">add_location</i>    
                        <input id="Address" type="text" name="signup1" data-length="15" maxlength="30"required>
                        <label for="Address">Address</label>
                        </div>
                          
                          <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">location_city</i>    
                        <input id="State" type="text" name="signup1" data-length="10" maxlength="13"required>
                        <label for="State">State</label>
                        </div>
                          
                          
                      </div>  
                        <div class="input-field col s12 col m12">
                         <select class="icons" name="signup1"required>
                         <option value="" disabled selected>Choose your Country</option>
                         <option value="India" data-icon="images/india.gif" class="circle">India</option>
                         <option value="Pakistan" data-icon="images/Pakistan.png" class="circle">Pakistan</option>
                         <option value="America" data-icon="images/American.png" class="circle">America</option>
                         <option value="Wadia" data-icon="images/wadia.jpg" class="circle">Wadia</option>
                        </select>
                        <label>Select Country</label>
                        </div>  
                     
                     <div class="col s12 col m12 center-align">
                     
                         <button  type="submit" class="validate btn-floating red waves-effect btn-large pulse"><i class="material-icons prefix">lock</i></button>
                     </div> 
                 </div>
                        
                </form>
                </div>
        </div>
        </div>
        </div>   
        <!--<input type="text" class="datepicker">-->
       
        <script>
                      $('.datepicker').pickadate({
    selectYears:true,           
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 100, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: false // Close upon selecting a date,
  }); 
  

 


   $(document).ready(function() {
    $('select').material_select();
    
  });
          
  $(document).ready(function() {
    $('input#input_text, textarea#textarea1').characterCounter();
  });  
  
  
    $(".button-collapse").sideNav();
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
  $('.collapsible').collapsible();
        
      
    
//  =========================
function log(){
 var form = $('#loginform');
 form.submit(function () {
 const pro=document.querySelector(".a");
 pro.classList.add('progress');
 const indent=document.createElement('div');
 indent.classList.add('indeterminate');
 pro.appendChild(indent);
 
 $.ajax({
 type: form.attr('method'),
 url: form.attr('action'),
 data: form.serialize(),
 success: function (data) {
 var result=data;
 
  if(result.length>0){
    Materialize.toast('Success', 4000,'rounded green');
   
    window.location.href=result;
// var h=result.length;
         //$('#content').html(result);
  }
 else{
        Materialize.toast('Check Your Username Or Password Is Invalid', 4000,'rounded red darken-1');
 
        pro.classList.remove('progress');
        const dogsList=document.querySelector(".dog-list");
	const dogdata=document.createElement('blockquote');
	dogdata.classList.add('card-panel','darken-4');
	dogdata.innerText=`Check Your Username Or Password Is Invalid`;
	dogsList.appendChild(dogdata);
    
        //$('.dog-List').html("Check Your Username Or Password Is Invalid");
        }
 
 }
 });

 return false;
 }); 
}
 
 
 //customer
 function log1(){
 var form = $('#signupform');
 form.submit(function () {

 $.ajax({
 type: form.attr('method'),
 url: form.attr('action'),
 data: form.serialize(),
 success: function (data) {
 var result=data;
 
  if(result.length>0){
      Materialize.toast('Success', 4000,'rounded green');
 
    window.location.href=result;
// var h=result.length;
         //$('#content').html(result);
  }
 else{
      Materialize.toast('Change User Name Or Email ID is Already Exist', 4000,'rounded red darken-1');
 
        const dogsList=document.querySelector(".dog-list1");
	const dogdata=document.createElement('blockquote');
	dogdata.classList.add('card-panel','red-text','darken-2');
	dogdata.innerText=`Change User Name Or Email ID is Already Exist`;
	dogsList.appendChild(dogdata);
    
        //$('.dog-List').html("Check Your Username Or Password Is Invalid");
        }
 
 }
 });

 return false;
 }); 
 }
 //supplier
 var form = $('#supplierform');
 form.submit(function () {

 $.ajax({
 type: form.attr('method'),
 url: form.attr('action'),
 data: form.serialize(),
 success: function (data) {
 var result=data;
 
  if(result.length>0){
   Materialize.toast('Success', 4000,'rounded green');
 
    window.location.href=result;
// var h=result.length;
         //$('#content').html(result);
  }
 else{
     Materialize.toast('Change User Name Or Email ID is Already Exist', 4000,'rounded red darken-1');
 
        const dogsList1=document.querySelector(".dog-list2");
	const dogdata=document.createElement('blockquote');
	dogdata.classList.add('card-panel','red-text','darken-2');
	dogdata.innerText=`Change User Name Or Email ID is Already Exist`;
	dogsList1.appendChild(dogdata);
    
        //$('.dog-List').html("Check Your Username Or Password Is Invalid");
        }
 
 }
 });

 return false;
 }); 
 
        </script>
          
    </body>
</html>
