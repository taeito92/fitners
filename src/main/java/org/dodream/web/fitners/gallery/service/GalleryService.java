package org.dodream.web.fitners.gallery.service;

import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.gallery.domain.Gallery;
import org.dodream.web.fitners.gallery.dto.GalleryDTO;

import java.util.List;

public interface GalleryService {

    Long register(GalleryDTO galleryDTO);

    PageResponseDTO<GalleryDTO> getDTOList(PageRequestDTO pageRequestDTO);

    GalleryDTO read(Long gno);

    void remove(GalleryDTO galleryDTO);

    boolean modify(GalleryDTO galleryDTO);


}
