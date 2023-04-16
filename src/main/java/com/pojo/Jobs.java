package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Jobs {
    String mak_id;
    String major_kind_id;
    String major_kind_name;
    String major_id;
    String major_name;
    String Jlimit;
    String Jexplain;
}
