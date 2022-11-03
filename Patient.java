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
public class Patient implements Serializable 
{
    
    @Id//primary key
    private int Patient_id;
    private String Patient_name;
    private String Patient_address;
    private String appointment_date;
    private String appointment_time;
    

    public Patient() {}
    
    public int getPatient_Id()
    {
        return Patient_id;
    }
    
    public void setPatient_Id(int Patient_id)
    {
        this.Patient_id = Patient_id;
    }

    public String getPatient_Name()
    {
        return Patient_name;
    }
    public void setPatient_name(String Patient_namestud_name)
    {
        this.Patient_name = Patient_name;
    }
    
    public String getPatient_Address()
    {
        return Patient_address;
    }
    public void setPatient_Address(String Patient_address)
    {
        this.Patient_address = Patient_address;
    }
    
    public String getAppointment_Date()
    {
        return appointment_date;
    }
    public void setAppointment_Date (String appointment_date)
    {
        this.appointment_date = appointment_date;
    }
    
    public String getAppointment_Time()
    {
        return appointment_time;
    }
    public void setAppointment_Time(String appointment_time)
    {
        this.appointment_time = appointment_time;
    }
    
}
