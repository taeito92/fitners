package org.dodream.web.fitners.fboard.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.fboard.config.FboardRootConfig;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {FboardRootConfig.class, RootConfig.class})
public class FboardMapperTests {

    @Autowired(required = false)
    FboardMapper fboardMapper;

    @Test
    public void insertTest() {
        fboardMapper.insertFboard(
            Fboard.builder()
                    .title("test12345677")
                    .content("test12345667")
                    .writer("testuser1234")
                    .build()
        );
    }

  /*  @Test
    public void getListTest() {
        fboardMapper.getFboardList();
    }
*/
    @Test
    public void selectTest() {
        Fboard fboard = fboardMapper.select(120L);
        log.warn(fboard);
    }

    @Test
    public void updateTest() {
        Fboard fboard = Fboard.builder()
                .bno(129L)
                .title("바꿈")
                .content("바꿈")
                .build();

        fboardMapper.update(fboard);
    }

    @Test
    public void deleteTest() {
        fboardMapper.delete(1L);
    }

}
