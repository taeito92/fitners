package org.dodream.web.fitners.auction.domain;

import lombok.*;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.auction.dto.ProgramDTO;
import org.dodream.web.fitners.fboard.domain.FboardAttach;

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
public class Auction {

    private Long ano;
    private String location;
    private boolean state;
    private String mid;
    private int price;
    private Timestamp regDate;
    private int membership;
    private int useMembership;
    private int viewCount;
    private int likeCount;
    private String title;

    @Builder.Default
    private List<Program> programList = new ArrayList<>();

    @Builder.Default
    private List<Bidding> biddingList = new ArrayList<>();


    public AuctionDTO getDTO() {
        AuctionDTO auctionDTO = AuctionDTO.builder()
                .ano(ano)
                .location(location)
                .state(state)
                .mid(mid)
                .price(price)
                .regDate(regDate)
                .membership(membership)
                .useMembership(useMembership)
                .viewCount(viewCount)
                .likeCount(likeCount)
                .title(title)
                .build();

        List<ProgramDTO> programDTOList = programList.stream().map(program -> {
            ProgramDTO programDTO = ProgramDTO.builder()
                    .ano(program.getAno())
                    .module(program.getModule())
                    .detail(program.getDetail())
                    .build();
            return programDTO;
        }).collect(Collectors.toList());

        auctionDTO.setProgramDTOList(programDTOList);

        List<BiddingDTO> biddingDTOList = biddingList.stream().map(bidding -> {
            BiddingDTO biddingDTO = BiddingDTO.builder()
                    .bidno(bidding.getBidno())
                    .ano(bidding.getAno())
                    .tid(bidding.getTid())
                    .price(bidding.getPrice())
                    .readDate(bidding.getReadDate())
                    .acceptDate(bidding.getAcceptDate())
                    .accept(bidding.isAccept())
                    .build();
            return biddingDTO;
        }).collect(Collectors.toList());

        auctionDTO.setBiddingDTOList(biddingDTOList);

        return auctionDTO;
    }

    public void addProgram(Program program) {
        programList.add(program);
    }


}