<%-- 
    Document   : SupplierPage
    Created on : Aug 21, 2017, 11:50:06 PM
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% //HttpSession session1=request.getSession(false); %>
 <%=session.getAttribute("suppliersession") %>
 <%if(session.getAttribute("suppliersession")==null){
     RequestDispatcher dispatcher=request.getRequestDispatcher("LoginSignup.jsp");
     dispatcher.forward(request, response);
 }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supplier Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">      
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">
          <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>           
          <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script> 
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
          <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script>
          <link href="materialize/css/navstyle.css" rel="stylesheet" type="text/css"/>
          <script src="materialize/js/allscript.js" type="text/javascript"></script>
          <script src="materialize/js/angular.min.js" type="text/javascript"></script>
          <script src="materialize/js/jquery-3.1.1.min.js" type="text/javascript"></script>
          <script src="materialize/js/materialize.min.js" type="text/javascript"></script>
          <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
          <script>
                var app=angular.module("CatApp",[]);
                app.controller("CatController",function ($scope,$http){
            //GetCat
                let url="AddProduct?action=ShowCat";
                $http.get(url).then(function(data){
                $scope.Cat=data.data;
                console.log("Cat Data " +data);
                });
            //end GetCat
            
            //logout start
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
                setInterval(function(){window.location.href=result;},2000);
                 }
                else{
                Materialize.toast('Try Again To LogOut',6000,'red');    
                 }
                 });
        
    }
    //logout end
            
    });
 
          </script>
    </head>
    <body  ng-app="CatApp" ng-controller="CatController">
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
     <!--//////////////////////////////////-->
     
   

     <div class="container">
         <div class="row">
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#addpro">Add Product</a></div></div>
             <div class="col s12 m6"><div class="card-panel z-depth-5 hoverable" style="margin: 10%;padding: 20%"><a class="waves-effect waves-light btn modal-trigger" href="#viewProduct">View Product</a></div></div>
             
         </div>
         
     </div>
     
     
  <!-- Modal Structure -->
  <div class="container"  >
  <div id="addpro" class="modal" style="width:100%;height:80%;max-height: 100%">
    <div class="modal-content">
      <h4>Add Product</h4>
        <div class="card-panel z-depth-5">
                               
            
                
            <form id="AddProduct" class="col s12 col m12 card-panel z-depth-5">
                    <div class="a">
                     </div>  
                
                    <input type="hidden" value="AddProduct" name="action">
                 <div class="row">
                     
                    <div class="file-field input-field">
                        <div class="btn indigo accent-1">
                            <i class="material-icons">add_a_photo</i>
                            <input type="file" name="ProductImage">
                        </div>
                     <div class="file-path-wrapper">
                         <input class="file-path validate" type="text" name="ProductImage1">
                        </div>
                        </div>
                    <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">edit</i>
                     <input id="ProName" type="text" name="Product" class="validate" required ng-model="ProName">
                     <label for="ProName">Product Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">edit</i>
                     <input id="ProModal" type="text" name="Product" class="validate" required ng-model="ProModal">
                     <label for="ProModal">Product Modal</label>
                    </div>
                     
                     
                       <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">monetization_on</i>
                     <input id="ProPrice" type="number" name="Product" class="validate" required ng-model="ProPrice">
                     <label for="ProPrice">Product Price</label>
                    </div>
                     
                        <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">shopping_basket</i>
                        <input id="ProBrand" type="text" name="Product" class="validate" required ng-model="ProBrand">
                        <label for="ProBrand">Product Brand</label>
                        </div>
                     
                        <div class="input-field col s12 col m12">
                            <i class="material-icons prefix">storage</i>
                            <select class="icons" name="Product" required ng-model="Cat" ng-model="ProCat">
                                <option value="" disabled selected>Choose Category</option>
                                <option ng-repeat="n in Cat" value="{{n.CatName}}" data-icon="images/india.gif" class="circle">{{n.CatName}}</option>
                            
                             </select>
                        <label>Select Category</label>
                        </div>  
                     
                      
                     
                       <div class="input-field col s12 col m12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="icon_prefix2" class="materialize-textarea" name="Product" placeholder="Type Somthing About Product" ng-model="ProDetails"></textarea>
                        <label for="icon_prefix2">Product Details</label>
                        </div>
                     <input type='hidden' value="<%=session.getAttribute("suppliersession") %>" name='Product'>
                     
                     <div class="col s12 col m12 center-align">
                     
                         <button  type="button" id="upload" ng-disabled="ProName==null||ProModal==null||ProPrice==null||ProBrand==null ||ProDetails==null" class="validate btn-large btn-floating red waves-effect waves-light pulse"><i class="material-icons prefix">backup</i></button>
                     </div> 
                 </div>
                    <div class="dog-list"></div>
                    
                </form>
            
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-blue btn blue pulse">Exit</a>
    </div>
  </div>
       </div>
     
  </div>
  
                     
                     <div ng-controller="ShowProduct">                
    <div id="viewProduct" class="modal" >
    <div class="modal-content">
      <h4 class="center-align">Product Table</h4>
      <table class="highlight centered responsive-table">
        <thead>
          <tr>
              <th>Product</th>
              <th>Item Name</th>
              <th>Item Price</th>
              <th>Item Status</th>
              <th>Item Delete</th>
              <th>Item Update</th>
          </tr>
        </thead>

        <tbody>
            <tr ng-repeat="n in Product">
            <td><img src="data:image/png;base64,{{n.ProImage}}" width="20%" class="materialboxed"></td>
       
            <td>{{n.ProName}}</td>
            <td>{{n.ProPrice}}</td>
            <td>{{n.ProStatus}}</td>
            <td><a href="#" class="btn-floating" ng-click="Delete(n)"><i class="material-icons red">delete</i></a></td>  
            <td><a href="#modal1" class="btn-floating waves-effect waves-light modal-trigger" ng-click="Update(n)" ><i class="material-icons">edit</i></a></td>
            
            

 
          </tr>
           
        </tbody>
      </table>
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-action modal-close waves-effect waves-blue btn-flat">Exit</a>
    </div>
   </div>
                         
         <!-- Modal Structure -->
       <!--==================-->
        <div id="modal1" class="modal">
    <div class="modal-content">
      <h4>Update</h4>
      <p>  <form> 
          <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">edit</i>
                     <input type="hidden" ng-model="ProId1" value="{{ProId1}}">
                     <input id="ProName" type="text" name="Product" class="validate" required ng-model="ProName1" value="{{ProName1}}">
                     <label for="ProName">Product Name</label>
                    </div>
                     
                      <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">edit</i>
                     <input id="ProModal" type="text" name="Product" class="validate" required  ng-model="ProModal1" value="{{ProModal1}}">
                     <label for="ProModal">Product Modal</label>
                    </div>
                     
                     
                       <div class="input-field col s12 col m6">
                     <i class="material-icons prefix">monetization_on</i>
                     <input id="ProPrice" type="number" name="Product" class="validate" required ng-model="ProPrice1" value="{{ProPrice1}}">
                     <label for="ProPrice">Product Price</label>
                    </div>
                     
                        <div class="input-field col s12 col m6">
                        <i class="material-icons prefix">shopping_basket</i>
                        <input id="ProBrand" type="text" name="Product" class="validate" required ng-model="ProBrand1" value="{{ProBrand1}}">
                        <label for="ProBrand">Product Brand</label>
                        </div>
                     
                        
                     
                      
                     
                       <div class="input-field col s12 col m12">
                        <i class="material-icons prefix">mode_edit</i>
                        <textarea id="icon_prefix2" class="materialize-textarea" name="Product" placeholder="Type Somthing About Product" ng-model="ProDiscription1">{{ProDiscription1}}</textarea>
                        <label for="icon_prefix2">Product Details</label>
                        </div>
      </form>
      </p>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat" ng-click="UPDATE()">Update</a>
    </div>
  </div>               
        <!--==========================-->                 
  </div>
            
<!--  <div ng-controller="imagedata">
      <form  id="image1" method="post" action="Image" enctype="multipart/form-data">
      <input type="file" name="file" ng-model="filename">
      <input type="submit" onclick="hi()">
  </form>
  </div>                   -->
     
  <script>
      
      console.log(" session name :<%=session.getAttribute("suppliersession")%>");
        $(document).ready(function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
    
  });
  
      
  
  $(document).ready(function() {
    $('select').material_select();
    
  });

 
 app.controller("ShowProduct",function ($scope,$http){
   RefreshProduct();
//   setInterval(function(){ RefreshProduct() }, 10000);
    function RefreshProduct(){
       let url1="AddProduct?action=ShowProduct&supplier=<%=session.getAttribute("suppliersession")%>";
       console.log(url1);
       $http.get(url1).then(function(data){
       $scope.Product=data.data; 
       console.log("Product Data "+data );
    });  
}
    
    $scope.Delete=function(curProduct) {
        let deleteurl="AddProduct?action=Delete&ProId="+curProduct.ProId;
        console.log(deleteurl);
        $http.post(deleteurl).then(function (data){
           RefreshProduct(); 
        });
        
    }
//          $scope.ProName1;
//          $scope.ProId1;
//          $scope.ProName2;
//          $scope.ProBrand1;
//          $scope.ProModal1;
//          $scope.ProDiscription1;
//          $scope.ProPrice1;
//          
          $scope.Update=function(d) {
          $scope.ProId1=d.ProId;
          $scope.ProName1=d.ProName;
          console.log( $scope.ProId1=d.ProId);
          console.log($scope.ProName1=d.ProName);
          $scope.ProBrand1=d.ProBrand;
          $scope.ProModal1=d.ProModal;
          $scope.ProDiscription1=d.ProDiscription;
          $scope.ProPrice1=d.ProPrice;
          
//          
//          let deleteurl="AddProduct?action=Update&ProId="+$scope.ProId1+"&ProName="+$scope.ProName1+"&ProPrice="+$scope.ProPrice1+"&ProModal="+$scope.ProModal1+"&ProDiscription="+$scope.ProDiscription1+"&ProBrand="+$scope.ProBrand1;
//          console.log(deleteurl);
////        $http.post(deleteurl).then(function (data){
////           RefreshProduct(); 
////        });
        
    }
            $scope.UPDATE=function(){
            let deleteurl="AddProduct?action=update&ProId="+$scope.ProId1+"&ProName="+$scope.ProName1+"&ProPrice="+$scope.ProPrice1+"&ProModal="+$scope.ProModal1+"&ProDiscription="+$scope.ProDiscription1+"&ProBrand="+$scope.ProBrand1;
            console.log("second url :"+deleteurl);
            $http.post(deleteurl).then(function (data){
            RefreshProduct(); 
            });
    }
    

    
    
 });
 
 
  //add product==========================================================
  function AddProduct(){
     
 var form = $('#AddProduct');
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
    Materialize.toast('Reuest Sent', 6000,'rounded green');
   
// var h=result.length;
         //$('#content').html(result);
  }
  
 else{
        Materialize.toast('Error', 6000,'rounded red');
   
        pro.classList.remove('progress');
       
        //$('.dog-List').html("Check Your Username Or Password Is Invalid");
        }
 
 }
 });

 return false;
 }); 
}
 
//  function logout(){
//      
//      <%//session1.invalidate();%>
//      Materialize.toast('Log Out Success',6000,'green');        
//      Materialize.toast('Re Login',6000,'red');
//      setInterval(function(){ window.location.href="LoginSignup.jsp";  }, 2000);        
//     
//             
//  }
  function hi(){
        alert("hello");            
//         app.controller("imagedata",function ($scope,$http){
//        
//        let url4="Image?file="$scope.file;
//       $http.post(url4).then(function (data){
//           
//           alert(data);
//       });
//    }); 
var form1 = $('#image1');
var randomVar = Math.round(Math.random() * (9999999999+1) - 0.5);
var boundary = 90000000000 + randomVar;
 form1.submit(function () {
 $.ajax({
 enctype: 'multipart/form-data',
 contentType:"multipart/form-data;boundary=--------------"+boundary,    
 type: form1.attr('method'),
 mimeType: 'multipart/form-data',
 url: form1.attr('action'),
 data: form1.serialize(),
 success: function (data) {
 var result=data;
 
  if(result.length>0){
    Materialize.toast(result, 3000,'rounded green');
     }
  
 else{
        Materialize.toast('Error', 6000,'rounded red');
           }
 
 }
 });

 return false;
 }); 
        
      }
   
 //add product===================
  $(document).ready(function(){
                $('#upload').click(function(){
                     var fo=document.getElementById('AddProduct');
                     const pro=document.querySelector(".a");
                     pro.classList.add('progress');
                     const indent=document.createElement('div');
                     indent.classList.add('indeterminate');
                     pro.appendChild(indent);
                     console.log('upload button clicked!')
                    var fd = new FormData(fo);    
                    //fd.append( 'userfile', $('#userfile')[0].files[0]);
                   
                      $.ajax({
//                      url: 'Image?userfilename='+filename,
                      url: 'AddProduct',
                      data: fd,
                      processData: false,
                      contentType: false,
                      type: 'POST',
                      success: function(data){
                        var result=data;
 
                        if(result.length>0){
                         Materialize.toast('Reuest Sent', 6000,'rounded green');
                         console.log("Ok Refreshed"+RefreshProduct());
                         RefreshProduct();
                        }
                        else{
                            Materialize.toast('Error', 6000,'rounded red');
                             pro.classList.remove('progress');
                        }
 
                         }
                    });
                });
        });
  </script>
   
<!--  <div >
      <form id="form12">
            <input type="file" name="userfile" id="userfile" size="20" />
            <input type="text" name="userfilename" id="userfilename">
            <input type="text" name="userfilename1">
            <br /><br />
            <input type="button" id="upload" value="upload" />
        </form>
    </div>-->
 
  
<!--  <script>
      
      
     
    let app=angular.module("imgctl",[]);
    app.controller("imagedata",function ($scope,$http){
        
        $scope.soo=function (){
        let url4="Image?file="$scope.file;
       $http.post(url4).then(function (data){
           
           alert(data);
       });}
    });
  </script>-->
    </body>
</html>
