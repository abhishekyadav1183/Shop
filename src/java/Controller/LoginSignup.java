/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Crud.CRUD;
import DAO.POJO;
import DAO.UserDetailsImplement;
import DAO.UserDetailsInterface;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author abhis
 */
public class LoginSignup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    CRUD crud =new CRUD();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession session=request.getSession();
            POJO pojo=new POJO();
            
            /* TODO output your page here. You may use following sample code. */
            String action=request.getParameter("action");
            System.out.println(action);
           
            
            // <editor-fold defaultstate="collapsed" desc="Customer SignUp Code">
            if(action.equalsIgnoreCase("signup")){
              
            String[] data=request.getParameterValues("signup");
             String sex=request.getParameter("sex");
           
            try{
           pojo.setSex(sex); 
            }
            catch(Exception e){
            pojo.setSex(sex);
           
              
            }
            
           
                
            for(String s:data){
                System.out.println("YOUR DATA IS :"+s);
            }
            
            for(int i=0;i<data.length;i++)
            {
               switch (i){
                   case 0: pojo.setFirstName(data[i]);break;
                   case 1: pojo.setLastName(data[i]);break;
                   case 2: pojo.setUsername(data[i]);break;
                   case 3: pojo.setPassword(data[i]);break;
                   case 4: pojo.setEmailId(data[i]);break;
                   case 5: pojo.setDOB(data[i]);break;
                   case 6: pojo.setPhoneNo(data[i]);break;
                   case 7: pojo.setAddress(data[i]);break;
                   case 8: pojo.setState(data[i]);break;
                   case 9: pojo.setCountry(data[i]);break;
                   
                   
               } 
               
            }
             pojo.setUserType("Customer");
              String status=crud.Signup(pojo);
              if(status.equalsIgnoreCase("ok")){
                  out.println("UserPage.jsp");
                  session.setAttribute("usersession", pojo.getUsername());
              }
            
              else{
                  //nothing
              }
             // System.out.println("SignUp: "+Status);  
            }// </editor-fold>
            
            
            
            
            // <editor-fold defaultstate="collapsed" desc="Supplier SignUp Code">
            else if(action.equalsIgnoreCase("supplier")&&action!=null){
                 String[] data=request.getParameterValues("signup1");
             String sex=request.getParameter("sex1");
           
            try{
           pojo.setSex(sex); 
            }
            catch(Exception e){
            pojo.setSex(sex);
           
              
            }
            
           
                
            for(String s:data){
                System.out.println("YOUR DATA IS :"+s);
            }
            
            for(int i=0;i<data.length;i++)
            {
               switch (i){
                   case 0: pojo.setFirstName(data[i]);break;
                   case 1: pojo.setLastName(data[i]);break;
                   case 2: pojo.setUsername(data[i]);break;
                   case 3: pojo.setPassword(data[i]);break;
                   case 4: pojo.setEmailId(data[i]);break;
                   case 5: pojo.setDOB(data[i]);break;
                   case 6: pojo.setPhoneNo(data[i]);break;
                   case 7: pojo.setAddress(data[i]);break;
                   case 8: pojo.setState(data[i]);break;
                   case 9: pojo.setCountry(data[i]);break;
                   
                   
               } 
               
            }
             pojo.setUserType("Supplier");
              String status=crud.Signup(pojo);
              if(status.equalsIgnoreCase("ok")){
                  out.println("SupplierPage.jsp");
                  session.setAttribute("suppliersession", pojo.getUsername());
              }
            
              else{
                  //nothing
              }
            }// </editor-fold>
            
            
            
            //<editor-fold defaultstate="collapsed" desc="Normal Login Code">
            else if(action.equalsIgnoreCase("login")&&action!=null){
              String[] login=request.getParameterValues("login");
              for(String s:login){
                  System.out.println("Your Login Data :"+s);
              }
              
              pojo.setUsername(login[0]);
              pojo.setPassword(login[1]);
              String status=crud.loginfinddata(pojo);
              
              if(status.equalsIgnoreCase("admin")){
                  out.println("AdminPage.jsp");
                  session.setAttribute("adminsession",login[0]);
              }
              else if(status.equalsIgnoreCase("supplier")){
                  out.println("SupplierPage.jsp");
                  session.setAttribute("suppliersession",login[0]);
              }
              
              else if(status.equalsIgnoreCase("customer")){
                  out.println("UserPage.jsp");
                  session.setAttribute("usersession",login[0]);
              }
              else{
                  System.out.println("koi login nhi hua");
              }
            }
            // </editor-fold>
            
            //<editor-fold defaultstate="collapsed" desc="LogOut">
            if(action.equalsIgnoreCase("logout")&& action!=null){
                System.out.println(action+" working Session Ander aa rha hai");
                session.invalidate();
                //RequestDispatcher rd=request.getRequestDispatcher("LoginSignup.jsp");
                //rd.forward(request, response);
                out.println("LoginSignup.jsp");
                System.out.println("Working Properly LogOut");
            }
            //</editor-fold>
            
            else{
                System.out.println("action nhi aya ");
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
