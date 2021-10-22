package org.dodream.web.fitners.auction.service;

import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.common.domain.MemberPhysical;
import org.dodream.web.fitners.common.dto.MemberPhysicalDTO;

import java.util.List;

public interface AuctionService {

    AuctionDTO read(Long ano);

    MemberPhysicalDTO getMemberPhysical(String mid);


}
