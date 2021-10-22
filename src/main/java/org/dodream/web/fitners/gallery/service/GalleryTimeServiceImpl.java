package org.dodream.web.fitners.gallery.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.gallery.mapper.GalleryTimeMapper;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@RequiredArgsConstructor
public class GalleryTimeServiceImpl implements GalleryTimeService{

    private final GalleryTimeMapper galleryTimeMapper;
    @Override
    public String getNow() {

        log.info("gallerttime service ...............getnow()");

        return galleryTimeMapper.getTime2();
    }
}
