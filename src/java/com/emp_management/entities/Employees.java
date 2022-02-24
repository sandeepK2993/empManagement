/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emp_management.entities;

import java.sql.Date;

/**
 *
 * @author HP
 */
public class Employees {
    private int id;
    private int emp_code;
    private String name;
    private Long mobile;
    private String email;
    private Date dob;
    private String gender;
    private String father_name;
    private String mother_name;
    private String emp_type;
    private String is_active;
    private Date created_at;
    private Date modify_at;

    public Employees(int id, int emp_code, String name, Long mobile, String email, Date dob, String gender, String father_name, String mother_name, String emp_type, String is_active, Date created_at, Date modify_at) {
        this.id = id;
        this.emp_code = emp_code;
        this.name = name;
        this.mobile = mobile;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.emp_type = emp_type;
        this.is_active = is_active;
        this.created_at = created_at;
        this.modify_at = modify_at;
    }

    public Employees() {
    }

    public Employees(int id, String name, Long mobile, String email, Date dob, String gender, String father_name, String mother_name, String emp_type, String _active, Date created_at, Date modify_at) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEmp_code() {
        return emp_code;
    }

    public void setEmp_code(int emp_code) {
        this.emp_code = emp_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getMobile() {
        return mobile;
    }

    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

    public String getEmp_type() {
        return emp_type;
    }

    public void setEmp_type(String emp_type) {
        this.emp_type = emp_type;
    }

    public String getIs_active() {
        return is_active;
    }

    public void setIs_active(String is_active) {
        this.is_active = is_active;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getModify_at() {
        return modify_at;
    }

    public void setModify_at(Date modify_at) {
        this.modify_at = modify_at;
    }
    
    
    
    
}
