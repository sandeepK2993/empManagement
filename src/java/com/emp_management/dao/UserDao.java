/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emp_management.dao;

import com.emp_management.entities.User;
import java.sql.*;

/**
 *
 * @author HP
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public User getUserLogin(String userid, String password){
        User user=null;
        try{
            String query="Select * from login_m where userid=? and pswd=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1,userid);
            pstm.setString(2,password);
            ResultSet set=pstm.executeQuery();
            if(set.next()){
                user=new User();
                user.setId(set.getInt("id"));
                user.setName(set.getString("name"));
                user.setUserid(set.getString("userid"));
            }else{
            
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
        
    }

    

}
