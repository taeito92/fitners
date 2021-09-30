package org.dodream.web.fitners.auction.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.auction.domain.Auction;
import org.dodream.web.fitners.common.config.RootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class AuctionMapperTests {

    @Autowired
    AuctionMapper auctionMapper;

    @Test
    public void selectAuctionTest() {
        log.warn(auctionMapper.selectAuction(1L));
    }

    @Test
    public void selectMemberPhysicalTest() {
        log.warn(auctionMapper.selectMemberPhysical("yong025"));
    }

}
