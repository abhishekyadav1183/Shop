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
public class CatImplement implements CatInterface{
POJO pojo=new POJO();
    @Override
    public void set(POJO p) {
       pojo.setCatId(p.getCatId());
       pojo.setCatName(p.getCatName());
       pojo.setCatDate(p.getCatDate());
    }

    @Override
    public BasicDBObject get() {
       BasicDBObject o=pojo.getCatData();
       return o;
    }
    
}
