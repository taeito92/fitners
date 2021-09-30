package org.dodream.web.fitners.auction.dto;

import lombok.*;
import org.dodream.web.fitners.auction.domain.Auction;
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
public class AuctionDTO {

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
    List<ProgramDTO> programDTOList = new ArrayList<>();

    public Auction getDomain() {
        Auction auction = Auction.builder()
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

        programDTOList.forEach(programDTO -> {
            Program program = Program.builder()
                    .ano(ano)
                    .module(programDTO.getModule())
                    .detail(programDTO.getDetail())
                    .build();
            auction.addProgram(program);
        });

        return auction;
    }


}
