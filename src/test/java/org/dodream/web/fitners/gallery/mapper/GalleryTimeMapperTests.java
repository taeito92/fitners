package org.dodream.web.fitners.gallery.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.gallery.config.GalleryRootConfig;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.sql.Time;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {GalleryRootConfig.class, RootConfig.class})
public class GalleryTimeMapperTests {

    @Autowired(required = false)
    GalleryTimeMapper galleryTimeMapper;

    @Test
    public void testGetTime(){
        log.warn("--------------------------");
        log.warn("--------------------------");
        log.warn(galleryTimeMapper.getTime2());
        log.warn("--------------------------");
        log.warn("--------------------------");
    }
}
