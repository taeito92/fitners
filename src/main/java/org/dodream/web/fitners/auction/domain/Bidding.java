package org.dodream.web.fitners.auction.domain;

import lombok.*;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Bidding {

    private Long bidno;
    private Long ano;
    private String tid;
    private Long price;
    private Timestamp readDate;
    private Timestamp acceptDate;
    private boolean accept;





}
