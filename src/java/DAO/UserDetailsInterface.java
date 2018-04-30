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
 * @author Abhishek Yadav
 */
public interface UserDetailsInterface {
   //login
    public void set(POJO p);
   public BasicDBObject get();
   
   //signup
   public void setuser(POJO p);
   public BasicDBObject getuser();
}
