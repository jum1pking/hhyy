package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Users {
    private String u_id;
    private String u_name;
    private String u_true_name;
    private String u_password;
    private String u_job;


}
