/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emp_management.entities;

/**
 *
 * @author HP
 */
public class User {
    private int id;
    private String name;
    private String userid;
    
    public User(int id, String name, String userid){
        this.id=id;
        this.name=name;
        this.userid=userid;
    }
    
    public User(){
    
    }

    public User(String name, String userid) {
        this.userid = userid;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int userid) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    
}
