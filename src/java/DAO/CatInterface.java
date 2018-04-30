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
public interface CatInterface {
    public void set(POJO p);
    public BasicDBObject get();
    
}
