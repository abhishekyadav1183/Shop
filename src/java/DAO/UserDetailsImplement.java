/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mongodb.BasicDBObject;
import org.json.simple.JSONObject;

/**
 *
 * @author abhis
 */
public class UserDetailsImplement implements UserDetailsInterface
{
    
    POJO pojo=new POJO();
    
//login
    @Override
    public void set(POJO p) {
      pojo.setUsername(p.getUsername());
      pojo.setPassword(p.getPassword());
    }

    @Override
    public BasicDBObject get() {
     BasicDBObject object=pojo.getlogin();
     return object;
    }
    
    
    
//signup set data
    @Override
    public void setuser(POJO p) {
     pojo.setFirstName(p.getFirstName());
     System.out.println("HELLO "+p.getFirstName());
     pojo.setLastName(p.getLastName());
     pojo.setEmailId(p.getEmailId());
     pojo.setUsername(p.getUsername());
     pojo.setAddress(p.getAddress());
     pojo.setState(p.getState());
     pojo.setCountry(p.getCountry());
     pojo.setDOB(p.getDOB());
     pojo.setPassword(p.getPassword());
     pojo.setPhoneNo(p.getPhoneNo());
     String sex=p.getSex();
     if(sex==null){
         pojo.setSex("Male");
     }
     else{
     pojo.setSex("Female");
     }
        System.out.println("aa gya"+p.getSex());
     String pic=p.getFirstName();
     pojo.setUserPic(pic);
     pojo.setUserType(p.getUserType());
    }

    //Signup all data get;
    @Override
    public BasicDBObject getuser() {
     BasicDBObject o=pojo.GetSignupdata();
      return o;  
    }
    
}
