package org.dodream.web.fitners.fboard.domain;

import lombok.*;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FboardAttach {

    private String uuid;
    private Long bno;
    private String fileName;
    private String path;
    private boolean image;

    //bno만 set
    public void setBno(Long bno) {
        this.bno = bno;
    }

}
