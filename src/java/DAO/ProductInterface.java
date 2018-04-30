/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mongodb.BasicDBObject;

/**
 *
 * @author abhis
 */
public interface ProductInterface {
    public void set(POJO p);
    public BasicDBObject get();
    public BasicDBObject getforinsert();
    public void setDelete(POJO p);
    public String getDelete();
    
    //update product
    public BasicDBObject getForUpdate();
}
