
package model;


public class Customer {
    private String cID;
    private String cName;

    public Customer(String cID, String cName) {
        this.cID = cID;
        this.cName = cName;
    }

    public String getcID() {
        return cID;
    }

    public void setcID(String cID) {
        this.cID = cID;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }
    
           
}
