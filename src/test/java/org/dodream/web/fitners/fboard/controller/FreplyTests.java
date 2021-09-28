package org.dodream.web.fitners.fboard.controller;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.fboard.config.FboardRootConfig;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.fboard.service.FreplyService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {FboardRootConfig.class, RootConfig.class})
public class FreplyTests {

    @Autowired
    private FreplyService freplyService;

    @Test
    public void getList() {
        freplyService.getReplyList(5L);
    }

    @Test
    public void addTest() {
        freplyService.addReply(FreplyDTO.builder()
                .bno(128L)
                .reply("test2")
                .replyer("test2")
                .build());
    }

}
