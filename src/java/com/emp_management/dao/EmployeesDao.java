/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emp_management.dao;

import com.emp_management.entities.Employees;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author HP
 */
public class EmployeesDao {
    private Connection con;
    
    public EmployeesDao(Connection con){
        this.con=con;
    }
    
    public ArrayList<Employees> getAllEmployees(){
        ArrayList<Employees> employees=null;
        try{
            String query="select * from employee_m where is_active=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1,"1");
            ResultSet rs=pstm.executeQuery();
            if(rs.next()){
                while(rs.next()){
                    int id=rs.getInt("id");
                    int emp_code=rs.getInt("emp_code");
                    String name=rs.getString("name");
                    Long mobile=rs.getLong("mobile");
                    String email=rs.getString("email");
                    Date dob=rs.getDate("dob");
                    String gender=rs.getString("gender");
                    String father_name=rs.getString("father_name");
                    String mother_name=rs.getString("mother_name");
                    String emp_type=rs.getString("emp_type");
                    String is_active=rs.getString("is_active");
                    Date created_at=rs.getDate("created_at");
                    Date modify_at=rs.getDate("modify_at");
                    Employees emp=new Employees(id,name,mobile,email,dob,gender,father_name,mother_name,emp_type,is_active,created_at,modify_at);
                    employees.add(emp);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return employees;
        
    }
}
