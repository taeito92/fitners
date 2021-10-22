package org.dodream.web.fitners.trainerpage.mapper;

import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.auction.domain.Bidding;

import java.util.List;

public interface TrainerPageMapper {

    List<Auction> selectBiddingList(String tid);
}
