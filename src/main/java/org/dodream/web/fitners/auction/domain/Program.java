package org.dodream.web.fitners.auction.domain;

import lombok.*;
import org.dodream.web.fitners.fboard.domain.FboardAttach;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Program {

    private Long ano;
    private String module;
    private String detail;

}
