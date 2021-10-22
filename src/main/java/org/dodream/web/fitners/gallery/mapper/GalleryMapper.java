package org.dodream.web.fitners.gallery.mapper;

import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.domain.FboardAttach;
import org.dodream.web.fitners.gallery.domain.Gallery;
import org.dodream.web.fitners.gallery.domain.GalleryAttach;

import java.util.List;

public interface GalleryMapper {

    void insert(Gallery gallery);
    List<Gallery> getList(PageRequestDTO pageRequestDTO);

    Gallery select(Long gno);

    int delete(Long gno);

    int update(Gallery gallery);

    int getCount(PageRequestDTO pageRequestDTO);

    void insertAttach(GalleryAttach galleryAttach);

    void deleteAttach(Long gno);

    void updateViewCount(Long gno);


}
