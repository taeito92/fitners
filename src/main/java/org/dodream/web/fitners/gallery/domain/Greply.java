package org.dodream.web.fitners.gallery.domain;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Greply {

    private Long rno;
    private Long gno;
    private String replyer;
    private String reply;
    private LocalDateTime regDate;
    private LocalDateTime modDate;

}
