package com.service;

import com.pojo.Users;

import java.util.List;

public interface UserService {

    Users checkUser(String u_name,String u_password);

    Users findUserById(String u_id);


    void addUser(Users users);

    List<Users> usersList();

    void changeUser(Users users);

    void removeUser(int uid);
}