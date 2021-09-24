package org.dodream.web.fitners.mapper;


import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.common.RootConfig;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {AuctionRootConfig.class, RootConfig.class})
public class TimeMapperTests {

    @Autowired(required = false)
    TimeMapper timeMapper;
}
