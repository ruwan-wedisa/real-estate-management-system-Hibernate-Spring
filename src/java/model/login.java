/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ruwan.wedisa
 */
public class login {
    private int id;
    private String userName;
    private String password;
    private int activated;
    private int userCategory;


    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getActivated() {
        return activated;
    }

    public void setActivated(int activated) {
        this.activated = activated;
    }

    public int getUserCategory() {
        return userCategory;
    }

    public void setUserCategory(int userCategory) {
        this.userCategory = userCategory;
    }

   

}
