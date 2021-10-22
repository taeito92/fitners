package org.dodream.web.fitners.auction.dto;

import lombok.*;
import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.domain.Bidding;
import org.dodream.web.fitners.auction.domain.Program;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BiddingDTO {

    private Long bidno;
    private Long ano;
    private String tid;
    private Long price;
    private Timestamp readDate;
    private Timestamp acceptDate;
    private boolean accept;


}
