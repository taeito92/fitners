package org.dodream.web.fitners.auction.mapper;

import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.common.domain.Member;
import org.dodream.web.fitners.common.domain.MemberPhysical;

public interface AuctionMapper {

    Auction selectAuction(Long ano);

    MemberPhysical selectMemberPhysical(String mid);

}
