package org.dodream.web.fitners.fboard.mapper;

import org.dodream.web.fitners.fboard.domain.Freply;

import java.util.List;

public interface FreplyMapper {

    void insert(Freply freply);

    List<Freply> getReplyList(Long bno);

    int delete(Long rno);

    int update(Freply reply);

}
