package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FirstKind {
    int ffk_id;
    String first_kind_id;
    String first_kind_name;
    String first_kind_salary_id;
    String first_kind_sale_id;
}
