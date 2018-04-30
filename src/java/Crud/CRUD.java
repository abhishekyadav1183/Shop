/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Crud;

import DAO.CatImplement;
import DAO.CatInterface;
import DAO.POJO;
import DAO.ProductImplement;
import DAO.ProductInterface;
import DAO.UserDetailsImplement;
import DAO.UserDetailsInterface;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.bson.types.ObjectId;
import org.json.simple.JSONArray;

/**
 *
 * @author Abhishek Yadav
 */
public class CRUD {
    
   UserDetailsInterface inter=new UserDetailsImplement();
   CatInterface catinter=new CatImplement();
   ProductInterface prointer=new ProductImplement();
    //connection
    
     MongoClient mc=new MongoClient("localhost");
     DB db=mc.getDB("Shop");
       
       
    
    
   //SignUP
   public String Signup(POJO p){
       inter.setuser(p);
       String Status="";
//       MongoClient mc=new MongoClient("localhost");
//       DB db=mc.getDB("Shop");
       DBCollection dbc=db.getCollection("UserDetails");
//       DBCollection dbc=crud.dbc1("UserDetails");
       BasicDBObject i=inter.getuser();
       
       
       
       
        DBCursor cursor=dbc.find();
        String UserName=i.getString("UserName");
        String EmailId=i.getString("EmailId");
        int count=0;
        while(cursor.hasNext()){
            DBObject object=cursor.next();
            if(UserName.equals(object.get("UserName"))||EmailId.equals(object.get("EmailId"))){
              count++;  
                
            }
           
            }
        if(count==0){
               dbc.insert(i);
               Status="ok";
               System.out.println("Data Inserted=================================================");
       
           
        }
        else{
           Status="Same"; 
            System.out.println("not insterted becouse same data found");
        }
       return Status;
       
   }
   
   //Login
    public String loginfinddata(POJO p){
        inter.set(p);
        DBCollection dbc=db.getCollection("UserDetails");
        String status="";
        BasicDBObject a=inter.get();
        String up[]=new String[2];
        up[0]=a.getString("UserName");
        up[1]=a.getString("Password");
        DBCursor cursor=dbc.find();
        while(cursor.hasNext()){
           DBObject object=cursor.next();
               if(up[0].equals(object.get("UserName")) && up[1].equals(object.get("Password"))){
                  if(object.get("UserName").equals("abhishekyadav1183@")&& object.get("Password").equals("123456789")){
                  status="admin";
                      System.out.println("Login as Admin");
                  }
                  else if(object.get("UserType").equals("Supplier")){
                      status="supplier";
                      System.out.println("Login as supplier");
                  }
                  else{
                   status="customer";
                   System.out.println("Login as customer");
                   }
                System.out.println("ho rha hai login "+object.get("UserName") +"as a "+ status);
              
           }
               
            
       }
       
        return status;
    }
    
   //Cat AddData 
    public String AddCat(POJO p){
        
        
        String status="";
        String date=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Calendar.getInstance().getTime()); 
        DBCollection table=db.getCollection("CategoryDetails");
        p.setCatDate(date);
        catinter.set(p);
        BasicDBObject data=catinter.get();
        
        DBCursor cursor=table.find();
        int count=0;
        while(cursor.hasNext()){
            DBObject object=cursor.next();
            if(p.getCatName().equals(object.get("CatName"))){
              count++;  
                
            }
           
            }
        if(count==0){
               table.insert(data);
               status="ok";
           
        }
        else{
           status="same"; 
        }
        
        
        return status;
    } 
   
    
    //Cat GetData 
    public JSONArray GetCat(){
        JSONArray j=new JSONArray();
        DBCollection dbc=db.getCollection("CategoryDetails");
        DBCursor cursor=dbc.find();
        POJO pojo=new POJO();
        while(cursor.hasNext()){
            DBObject object=cursor.next();
            pojo.setCatId(object.get("_id").toString());
            pojo.setCatName(object.get("CatName").toString());
            pojo.setCatDate(object.get("CatDate").toString());
            catinter.set(pojo);
            j.add(catinter.get());
        }
        
        return j;
    }
   
    
    //Add ProductData
    public String AddProduct(POJO p){
    String Status="";
    String date=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Calendar.getInstance().getTime()); 
    p.setProDate(date);
    p.setProStatus("Waiting");
    prointer.set(p);
    DBCollection dbc=db.getCollection("ProductDetails");
    BasicDBObject document=prointer.get();
    dbc.insert(document);
    return Status;
    }
    
    // Get ProductData
     public JSONArray GetProduct(String p){
        JSONArray j=new JSONArray();
        DBCollection dbc=db.getCollection("ProductDetails");
        DBObject query=new BasicDBObject();
        query.put("ProSupplier", p);
        DBCursor cursor=dbc.find(query);
        POJO pojo=new POJO();
        while(cursor.hasNext()){
            DBObject object=cursor.next();
           // pojo.setProImage((Binary)object.get("ProImage"));
            pojo.setProName(object.get("ProName").toString());
            pojo.setProPrice(object.get("ProPrice").toString());
            pojo.setProModal(object.get("ProModal").toString());
            pojo.setProBrand(object.get("ProBrand").toString());
            pojo.setProCat(object.get("ProCat").toString());
            pojo.setProDiscription(object.get("ProDiscription").toString());
            pojo.setProStatus(object.get("ProStatus").toString());
            pojo.setProDate(object.get("ProDate").toString());
            pojo.setProId(object.get("_id").toString());
           
            pojo.setProImage((byte[])object.get("ProImage"));
            pojo.setProSupplier(object.get("ProSupplier").toString());
            prointer.set(pojo);
            j.add(prointer.getforinsert());
        }
        
        return j;
    }
    
    // DeleteProduct
     public String DeleteProduct(POJO p){
         String Status="";
         prointer.setDelete(p);
         String ProId=prointer.getDelete();
         System.out.println("1 crud working for delete" +ProId);  
         DBCollection dbc=db.getCollection("ProductDetails");
         BasicDBObject query=new BasicDBObject();
         query.put("_id",new ObjectId(ProId));
         dbc.remove(query);
         Status="Deleted";
         System.out.println("2 crud working for delete" +ProId);
         return Status;
     }
     
     
     public String UpdateProduct(POJO p){
         String Status="";
         // get Product
         DBCollection dbc=db.getCollection("ProductDetails");
         prointer.set(p);
         BasicDBObject object=prointer.getForUpdate();
        
         BasicDBObject f=new BasicDBObject();
         f.put("_id",new ObjectId(p.getProId()));
         DBCursor cursor=dbc.find(f);
         while(cursor.hasNext()){
             DBObject dBObject=cursor.next();
       
        object.put("ProImage", dBObject.get("ProImage"));
        object.put("ProCat",  dBObject.get("ProCat"));
        object.put("ProDate",  dBObject.get("ProDate"));
        object.put("ProStatus",  dBObject.get("ProStatus"));
        object.put("ProSupplier", dBObject.get("ProSupplier"));
         }
        
         BasicDBObject search=new BasicDBObject();
         search.put("_id", new ObjectId(p.getProId()));
         
         dbc.update(search, object);
         return Status;
     }
}