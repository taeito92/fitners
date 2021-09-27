package org.dodream.web.fitners.auction.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
    String selectTime();

    @Select("select now()")
    String getTime2();
}
