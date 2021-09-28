package org.dodream.web.fitners.fboard.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.fboard.config.FboardRootConfig;
import org.dodream.web.fitners.fboard.domain.Freply;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {FboardRootConfig.class, RootConfig.class})
public class FreplyMapperTests {

    @Autowired
    private FreplyMapper freplyMapper;

    @Test
    public void insertTest() {
        Freply freply = Freply.builder()
                .bno(5L)
                .replyer("user3")
                .reply("testreply")
                .build();
        freplyMapper.insert(freply);
    }

    @Test
    public void selectListTest() {
        freplyMapper.getReplyList(2L);
    }

}
