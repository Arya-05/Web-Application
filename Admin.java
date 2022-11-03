/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package viva;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author LENOVO
 */
@Entity
public class Admin implements Serializable {
     @Id//primary key
    private int Patient_id;
    private String Patient_name;
    private String Patient_address;
    private String date;
    private String timing;
    

    public Admin() {}

    public int getPatient_Id()
    {
        return Patient_id;
    }
    public void setPatient_Id(int book_id)
    {
        this.Patient_id = Patient_id;
    }
    
    public String getPatient_Name()
    {
        return Patient_name;
    }
    public void setPatient_Name(String Patient_name)
    {
        this.Patient_name = Patient_name;
    }
    
    public String getPatient_address()
    {
        return Patient_address;
    }
    public void setPatient_address(String Patient_address)
    {
        this.Patient_address = Patient_address;
    }
    
    public String getDate()
    {
        return date;
    }
    public void setDate(String date)
    {
        this.date =date;
    }
    public String getTiming()
    {
        return timing;
    }
    public void setTiming(String timing)
    {
        this.timing =timing;
    }
}

