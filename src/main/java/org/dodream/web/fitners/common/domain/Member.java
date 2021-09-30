package org.dodream.web.fitners.common.domain;

import lombok.*;
import org.dodream.web.fitners.common.dto.MemberDTO;

import java.sql.Timestamp;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Member {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private boolean disabled;

    public MemberDTO getDTO() {
        MemberDTO memberDTO = MemberDTO.builder()
                .mid(mid)
                .mpassword(mpassword)
                .mname(mname)
                .memail(memail)
                .regDate(regDate)
                .modDate(modDate)
                .disabled(disabled)
                .build();
        return memberDTO;
    }

}
