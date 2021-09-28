package org.dodream.web.fitners.fboard.domain;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Freply {

    private Long rno;
    private Long bno;
    private String replyer;
    private String reply;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
}
