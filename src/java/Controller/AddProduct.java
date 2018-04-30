/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Crud.CRUD;
import DAO.POJO;
import com.sun.xml.internal.messaging.saaj.util.ByteInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.bind.DatatypeConverter;
import static jdk.nashorn.internal.objects.NativeError.getFileName;
import org.bson.types.Binary;
import org.json.simple.JSONArray;

/**
 *
 * @author abhis
 */
@MultipartConfig(maxFileSize=1024*1024*20)//20mb  
public class AddProduct extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            CRUD crud=new CRUD();
            
            /* TODO output your page here. You may use following sample code. */
           String action=request.getParameter("action");
           if(action.equalsIgnoreCase("ShowCat")){
               JSONArray j=crud.GetCat();
               out.println(j);
               System.out.println(j);
           }
           
           //AddProduct
           else if(action.equalsIgnoreCase("AddProduct")){
               POJO pojo=new POJO();
                //System.out.println(" dfjdka "+request.getParameter("ProductImage1"));
                Part file1=request.getPart("ProductImage");
                InputStream in=file1.getInputStream();
                byte in1[]=new byte[in.available()];
                in.read(in1);
                
                
                System.out.println(" aaya "+file1);
                //File file=new File(request.getParameter("ProductImage1"));
               // String f1=file.getAbsolutePath();
                //String f1="A:\\project works\\images\\4.jpg";
                //System.out.println("Image Path "+"dusra path aya "+f1);
                //FileInputStream f=new FileInputStream(file);
                System.out.println("secon "+in);
                
//                byte b[]=new byte[f.available()];
//                f.read(b);
//                
                pojo.setProImage(in1);
                System.out.println(in1);
                
                
               
              
               String ProductDetails[]=request.getParameterValues("Product");
               for(String a:ProductDetails){
                   System.out.println(" aa rha hai "+a);
               }
                for(int i=0;i<ProductDetails.length;i++){
                 switch(i){
                     case 0: pojo.setProName(ProductDetails[i]); break;
                     case 1: pojo.setProModal(ProductDetails[i]); break;
                     case 2: pojo.setProPrice(ProductDetails[i]); break;
                     case 3: pojo.setProBrand(ProductDetails[i]); break;
                     case 4: pojo.setProCat(ProductDetails[i]); break;
                     case 5: pojo.setProDiscription(ProductDetails[i]); break;
                     case 6: pojo.setProSupplier(ProductDetails[i]); break;
                     
            }
            }
               String Status=crud.AddProduct(pojo);
               out.println("suc");
           }
           
           else if(action.equalsIgnoreCase("ShowProduct")){
               String username=request.getParameter("supplier");
               System.out.println("Supplier Name :"+username);
               JSONArray j=crud.GetProduct(username);
               System.out.println(j);
               out.print(j);
           }
           
           //Delete Product
           else if(action.equalsIgnoreCase("Delete")){
               String ProId=request.getParameter("ProId");
               System.out.println("Pro ID :"+ProId);
               POJO p=new POJO();
               p.setProId(ProId);
               String Status=crud.DeleteProduct(p);
               out.println(Status);
               System.out.println("Deleted Id Data "+ProId);
           }
           else if(action.equalsIgnoreCase("update")){
               String ProID=request.getParameter("ProId");
               String ProName=request.getParameter("ProName");
               String ProBrand=request.getParameter("ProBrand");
               String ProPrice=request.getParameter("ProPrice");
               String ProModal=request.getParameter("ProModal");
               String ProDiscription=request.getParameter("ProDiscription");
               System.out.println(" Aya Hi Update K liye"+ProID);
               POJO pojo=new POJO();
               pojo.setProId(ProID);
               pojo.setProName(ProName);
               pojo.setProBrand(ProBrand);
               pojo.setProPrice(ProPrice);
               pojo.setProModal(ProModal);
               pojo.setProDiscription(ProDiscription);
               String Status=crud.UpdateProduct(pojo);
               
               
               
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
