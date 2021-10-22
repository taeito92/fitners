package org.dodream.web.fitners.gallery.mapper;

import org.dodream.web.fitners.fboard.domain.Freply;
import org.dodream.web.fitners.gallery.domain.Greply;

import java.util.List;

public interface GreplyMapper {

    void insert(Greply greply);

    List<Greply> getReplyList(Long gno);

    int delete(Long rno);

    int update(Greply greply);

}