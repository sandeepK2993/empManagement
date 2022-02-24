/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emp.management.helper;

import java.sql.*;

/**
 *
 * @author HP
 */
public class ConectionProvider {
    private static Connection con;
    public static Connection getconnection(){
        try{
            if(con==null){
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/upschrms";
                String username="root";
                String password="123456";
                con= DriverManager.getConnection(url,username,password);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
