package org.dodream.web.fitners.gallery.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GreplyDTO {
    private Long rno;
    private Long gno;
    private String replyer;
    private String reply;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
}
