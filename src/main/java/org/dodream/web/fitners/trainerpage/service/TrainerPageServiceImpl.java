package org.dodream.web.fitners.trainerpage.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.auction.mapper.AuctionMapper;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.trainerpage.mapper.TrainerPageMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class TrainerPageServiceImpl implements TrainerPageService {

    private final TrainerPageMapper trainerPageMapper;

    @Override
    public List<AuctionDTO> readBiddingList(String tid) {
     return trainerPageMapper.selectBiddingList(tid).stream().map(auction -> {
         AuctionDTO auctionDTO = AuctionDTO.builder()
                 .ano(auction.getAno())
                 .mid(auction.getMid())
                 .price(auction.getPrice())
                 .regDate(auction.getRegDate())
                 .membership(auction.getMembership())
                 .useMembership(auction.getUseMembership())
                 .viewCount(auction.getViewCount())
                 .likeCount(auction.getLikeCount())
                 .title(auction.getTitle())
                 .state(auction.isState())
                 .location(auction.getLocation())
                 .build();


         return auctionDTO;
     }).collect(Collectors.toList());

    }

    @Override
    public PageResponseDTO<AuctionDTO> trainerPageGetList(PageRequestDTO pageRequestDTO) {
        return null;
    }


}
