package org.dodream.web.fitners.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.dodream.web.fitners.common.domain.Member;

import java.sql.Timestamp;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MemberDTO {

    private String mid;
    private String mpassword;
    private String mname;
    private String memail;
    private Timestamp regDate;
    private Timestamp modDate;
    private boolean disabled;

    public Member getDomain() {
        Member member = Member.builder()
                .mid(mid)
                .mpassword(mpassword)
                .mname(mname)
                .memail(memail)
                .regDate(regDate)
                .modDate(modDate)
                .disabled(disabled)
                .build();
        return member;
    }

}
