package org.dodream.web.fitners.trainerpage.service;

import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.auction.dto.BiddingDTO;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;

import java.util.List;

public interface TrainerPageService {

    List<AuctionDTO> readBiddingList(String tid);

    PageResponseDTO<AuctionDTO> trainerPageGetList(PageRequestDTO pageRequestDTO);
}
