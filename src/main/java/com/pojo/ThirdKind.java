package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ThirdKind {
    int ftk_id;
    String first_kind_id;
    String first_kind_name;
    String second_kind_id;
    String second_kind_name;
    String third_kind_id;
    String third_kind_name;
    String third_kind_sale_id;
    String third_kind_is_retail;
}