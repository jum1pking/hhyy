package com.mapper;

import com.pojo.Users;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UsersMapper {
    @Select("SELECT * FROM users where u_name=#{u_name}&&u_password=#{u_password}")
    Users checkUser(@Param("u_name") String u_name,@Param("u_password") String u_password);

    @Select("SELECT * FROM users")
    List<Users> listAllUsers();

    @Select("SELECT * FROM users where u_id=#{u_id}")
    Users findUserById(int u_id);

    @Insert("INSERT INTO users(u_name,u_true_name,u_password,u_job) VALUES (#{u_name},#{u_true_name},#{u_password},#{u_job})")
    void addUser(Users users);
    @Update("UPDATE users SET u_name=#{name},u_true_name=#{truename},u_password=#{password},u_job=#{job} WHERE u_id=#{uid} LIMIT 1")
    void changeUsers(@Param("uid") int uid,@Param("name") String name,@Param("password") String password,@Param("truename") String truename,@Param("job") String job);

    @Delete("DELETE FROM users WHERE u_id=#{uid}")
    void removeUser(int uid);
}
