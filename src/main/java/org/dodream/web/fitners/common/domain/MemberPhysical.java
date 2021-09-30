package org.dodream.web.fitners.common.domain;

import lombok.*;
import org.dodream.web.fitners.common.dto.MemberPhysicalDTO;

import java.sql.Timestamp;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberPhysical {

    private String mid;
    private int height;
    private int weight;
    private int age;
    private boolean sex;
    private String diseases;
    private Timestamp regDate;
    private Timestamp modDate;

    public MemberPhysicalDTO getDTO() {
        MemberPhysicalDTO memberPhysicalDTO = MemberPhysicalDTO.builder()
                .mid(mid)
                .height(height)
                .weight(weight)
                .age(age)
                .sex(sex)
                .diseases(diseases)
                .regDate(regDate)
                .modDate(modDate)
                .build();

        return memberPhysicalDTO;
    }

}
