package org.dodream.web.fitners.gallery.mapper;

import org.apache.ibatis.annotations.Select;

public interface GalleryTimeMapper {

    @Select("select now()")
    String getTime();

    String getTime2();
}
