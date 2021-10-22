package org.dodream.web.fitners.gallery.mapper;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.config.RootConfig;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.gallery.config.GalleryRootConfig;
import org.dodream.web.fitners.gallery.domain.Gallery;
import org.dodream.web.fitners.gallery.dto.GalleryDTO;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.List;
import java.util.stream.IntStream;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {GalleryRootConfig.class, RootConfig.class})
public class GalleryMapperTests {
    @Autowired
    GalleryMapper galleryMapper;

    @Test
    public void testList(){
        PageRequestDTO pageRequestDTO = PageRequestDTO.builder().build();

        log.info(pageRequestDTO);



        galleryMapper.getList(pageRequestDTO).forEach(gallery -> log.info(gallery));
    }



    @Test
    public void testDummies(){
        IntStream.rangeClosed(1,100).forEach(i -> {
            Gallery gallery = Gallery.builder()
                    .title("title"+i)
                    .content("content"+i)
                    .writer("user" + (i%10))
                    .build();
            galleryMapper.insert(gallery);
        });
    }


}
