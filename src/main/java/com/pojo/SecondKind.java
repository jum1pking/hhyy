package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SecondKind {
    int fsk_id;
    String first_kind_id;
    String first_kind_name;
    String second_kind_id;
    String second_kind_name;
    String second_salary_id;
    String second_sale_id;
}