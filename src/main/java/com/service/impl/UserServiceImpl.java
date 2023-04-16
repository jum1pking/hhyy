package com.service.impl;

import com.mapper.UsersMapper;
import com.pojo.Users;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UsersMapper usersMapper;


    @Override
    public Users checkUser(String u_name,String u_password) {
        return usersMapper.checkUser(u_name,u_password);
    }

    @Override
    public Users findUserById(String u_id) {
        int uid= Integer.valueOf(u_id);
        return usersMapper.findUserById(uid);
    }

    @Override
    public void addUser(Users users) {
        usersMapper.addUser(users);
    }

    @Override
    public List<Users> usersList() {
        return usersMapper.listAllUsers();
    }

    @Override
    public void changeUser(Users users) {
        String uid1 = users.getU_id();
        int uid = Integer.valueOf(uid1);
        String name = users.getU_name();
        String password = users.getU_password();
        String truename = users.getU_true_name();
        String job= users.getU_job();
        usersMapper.changeUsers(uid,name,password,truename,job);
    }

    @Override
    public void removeUser(int uid) {
        usersMapper.removeUser(uid);
    }

}
