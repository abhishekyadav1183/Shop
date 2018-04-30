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
public class ProductImplement implements ProductInterface{
POJO pojo=new POJO();
    @Override
    public void set(POJO p) {
       pojo.setProName(p.getProName());
       pojo.setProBrand(p.getProBrand());
       pojo.setProCat(p.getProCat());
       pojo.setProDate(p.getProDate());
       pojo.setProImage(p.getProImage());
       pojo.setProModal(p.getProModal());
       pojo.setProPrice(p.getProPrice());
       pojo.setProStatus(p.getProStatus());
       pojo.setProSupplier(p.getProSupplier());
       pojo.setProDiscription(p.getProDiscription());
       pojo.setProId(p.getProId());
       
       
       
    }

    @Override
    public BasicDBObject get() {
        //binary image
     BasicDBObject o=pojo.GetProductData0();
     return o;
    }

    @Override
    public BasicDBObject getforinsert() {
//        normal string in base64 format
       BasicDBObject o=pojo.GetProductData1();
       return o;
    }

    @Override
    public void setDelete(POJO p) {
        pojo.setProId(p.getProId());
    }

    @Override
    public String getDelete() {
      String ProId=pojo.getProId();
      return ProId;
    }

    @Override
    public BasicDBObject getForUpdate() {
       BasicDBObject object=pojo.GetProductDataForUpdate();
       return object;
    }
    
    
}
