
package DAO;

import com.mongodb.BasicDBObject;
import javax.xml.bind.DatatypeConverter;
import org.bson.types.Binary;
import org.json.simple.JSONObject;

/**
 *
 * @author Abhishek Yadav
 */



public class POJO {
    //User Data 
    private String FirstName,LastName,EmailId,PhoneNo,Password,Sex,Address,Country,State,Username,UserPic,DOB,UserType;
    //Product data
    private byte[] ProImage;
    private String ProName,ProModal,ProPrice,ProCat,ProDiscription,ProDate,ProBrand,ProStatus,ProSupplier,ProId;

   

    
    private String CatId,CatName,CatDate;

   
//Constructor
    public POJO() {
    }
   
       public String getUserType() {
        return UserType;
    }

    public void setUserType(String UserType) {
        this.UserType = UserType;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getEmailId() {
        return EmailId;
    }

    public void setEmailId(String EmailId) {
        this.EmailId = EmailId;
    }

    public String getPhoneNo() {
        return PhoneNo;
    }

    public void setPhoneNo(String PhoneNo) {
        this.PhoneNo = PhoneNo;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String Sex) {
        this.Sex = Sex;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getUserPic() {
        return UserPic;
    }

    public void setUserPic(String UserPic) {
        this.UserPic = UserPic;
    }
    
    
   //for cat========================================================================== 
    
     public String getCatId() {
        return CatId;
    }

    public void setCatId(String CatId) {
        this.CatId = CatId;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatName(String CatName) {
        this.CatName = CatName;
    }

    public String getCatDate() {
        return CatDate;
    }

    public void setCatDate(String CatDate) {
        this.CatDate = CatDate;
    }
  
//    =============================== product data
    
     public String getProId() {
        return ProId;
    }

    public void setProId(String ProId) {
        this.ProId = ProId;
    }
    public byte[] getProImage() {
        return ProImage;
    }

    public void setProImage(byte[] ProImage) {
        this.ProImage = ProImage;
    }

    public String getProName() {
        return ProName;
    }

    public void setProName(String ProName) {
        this.ProName = ProName;
    }

    public String getProModal() {
        return ProModal;
    }

    public void setProModal(String ProModal) {
        this.ProModal = ProModal;
    }

    public String getProPrice() {
        return ProPrice;
    }

    public void setProPrice(String ProPrice) {
        this.ProPrice = ProPrice;
    }

    public String getProCat() {
        return ProCat;
    }

    public void setProCat(String ProCat) {
        this.ProCat = ProCat;
    }

    public String getProDiscription() {
        return ProDiscription;
    }

    public void setProDiscription(String ProDiscription) {
        this.ProDiscription = ProDiscription;
    }

    public String getProDate() {
        return ProDate;
    }

    public void setProDate(String ProDate) {
        this.ProDate = ProDate;
    }

    public String getProBrand() {
        return ProBrand;
    }

    public void setProBrand(String ProBrand) {
        this.ProBrand = ProBrand;
    }

    public String getProStatus() {
        return ProStatus;
    }

    public void setProStatus(String ProStatus) {
        this.ProStatus = ProStatus;
    }

    public String getProSupplier() {
        return ProSupplier;
    }

    public void setProSupplier(String ProSupplier) {
        this.ProSupplier = ProSupplier;
    }
    
    
    public BasicDBObject GetSignupdata(){
        BasicDBObject j=new BasicDBObject();
        j.put("FirstName",getFirstName());
        j.put("LastName", getLastName());
        j.put("EmailId", getEmailId());
        j.put("Password", getPassword());
        j.put("UserName", getUsername());
        j.put("UserPic", getUserPic());
        j.put("PhoneNo", getPhoneNo());
        j.put("DOB", getDOB());
        j.put("Sex", getSex());
        j.put("Address", getAddress());
        j.put("State", getState());
        j.put("Country", getCountry());
        j.put("UserType", getUserType());
        
        return j;
    }
    
    public BasicDBObject getlogin(){
        BasicDBObject o=new BasicDBObject();
        o.put("UserName", getUsername());
        o.put("Password", getPassword());
        return o;
    }
    
    public BasicDBObject getCatData(){
        BasicDBObject o=new BasicDBObject();
        o.put("CatId", getCatId());
        o.put("CatName",getCatName());
        o.put("CatDate",getCatDate());
        return o;
    }
  //ProDuct Get
    public BasicDBObject GetProductData0(){
        BasicDBObject o=new BasicDBObject();
        Binary b=new Binary(getProImage());
        
        o.put("ProImage", b);
        o.put("ProName", getProName());
        o.put("ProModal", getProModal());
        o.put("ProPrice", getProPrice());
        o.put("ProCat", getProCat());
        o.put("ProDiscription", getProDiscription());
        o.put("ProDate", getProDate());
        o.put("ProBrand", getProBrand());
        o.put("ProStatus", getProStatus());
        o.put("ProSupplier", getProSupplier());
        
        return o;
    }
    public BasicDBObject GetProductData(){
        BasicDBObject o=new BasicDBObject();
        Binary b=new Binary(getProImage());
        o.put("ProId", getProId());
        o.put("ProImage", b);
        o.put("ProName", getProName());
        o.put("ProModal", getProModal());
        o.put("ProPrice", getProPrice());
        o.put("ProCat", getProCat());
        o.put("ProDiscription", getProDiscription());
        o.put("ProDate", getProDate());
        o.put("ProBrand", getProBrand());
        o.put("ProStatus", getProStatus());
        o.put("ProSupplier", getProSupplier());
        
        return o;
    }
    
     public BasicDBObject GetProductData1(){
        BasicDBObject o=new BasicDBObject();
        String img=DatatypeConverter.printBase64Binary(getProImage());
        o.put("ProId", getProId());
        o.put("ProImage", img);
        o.put("ProName", getProName());
        o.put("ProModal", getProModal());
        o.put("ProPrice", getProPrice());
        o.put("ProCat", getProCat());
        o.put("ProDiscription", getProDiscription());
        o.put("ProDate", getProDate());
        o.put("ProBrand", getProBrand());
        o.put("ProStatus", getProStatus());
        o.put("ProSupplier", getProSupplier());
        
        return o;
    }
    
     public BasicDBObject GetProductDataForUpdate(){
        BasicDBObject o=new BasicDBObject();
       
//        o.put("ProId", getProId());
        o.put("ProName", getProName());
        o.put("ProModal", getProModal());
        o.put("ProPrice", getProPrice());
        o.put("ProDiscription", getProDiscription());
        o.put("ProBrand", getProBrand());
        
        
        return o;
    }
}
