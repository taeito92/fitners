package org.dodream.web.fitners.trainerpage.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.fboard.config.FboardRootConfig;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.mapper.FboardMapper;
import org.dodream.web.fitners.trainerpage.config.TrainerRootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {TrainerRootConfig.class, RootConfig.class})
public class trainerPageMapperTests {

    @Autowired(required = false)
    TrainerPageMapper trainerPageMapper;

    @Test
    public void selectAuctionTest() {
        log.warn(trainerPageMapper.selectBiddingList("hwak252"));
    }
}
