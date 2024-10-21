/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package electicity.billing;

class user2 {
    private String Customername,meterno,cardno,Amount,date;
    
    public user2(String Customername,String meterno,String cardno,String Amount,String date)
    {
        this.Customername=Customername;
        this.meterno=meterno;
        this.cardno=cardno;
        this.Amount=Amount;
        this.date=date;
    }
    public String getCustomername(){
        return Customername;
    }
    public String getmeterno(){
        return meterno;
    }
    public String getcardno(){
        return cardno;
    }
    public String getAmount(){
        return Amount;
    }
    public String getdate(){
        return date;
    }
}

