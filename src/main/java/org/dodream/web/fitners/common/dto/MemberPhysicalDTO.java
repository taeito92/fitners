package org.dodream.web.fitners.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberPhysicalDTO {

    private String mid;
    private int height;
    private int weight;
    private int age;
    private boolean sex;
    private String diseases;
    private Timestamp regDate;
    private Timestamp modDate;

}
