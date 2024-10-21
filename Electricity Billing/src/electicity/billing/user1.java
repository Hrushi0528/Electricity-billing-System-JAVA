/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package electicity.billing;


class user1 {
    private String name,meterno,month,year,units,totalcost,status;
    
    public user1(String name,String meterno,String month,String year,String units,String totalcost,String status)
    {
        this.name=name;
        this.meterno=meterno;
        this.month=month;
        this.year=year;
        this.units=units;
        this.totalcost=totalcost;
        this.status=status;
    }
    public String getname(){
        return name;
    }
    public String getmeterno(){
        return meterno;
    }
    public String getmonth(){
        return month;
    }
    public String getyear(){
        return year;
    }
    public String getunits(){
        return units;
    }
    public String gettotalcost(){
        return totalcost;
    }
    public String getstatus(){
        return status;
    }
}
