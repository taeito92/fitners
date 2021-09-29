package org.dodream.web.fitners.fboard.service;

import org.dodream.web.fitners.fboard.domain.Freply;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;

import java.util.List;

public interface FreplyService {

    void addReply(FreplyDTO freplyDTO);

    List<FreplyDTO> getReplyList(Long bno);

    int remove(Long rno);

    int modify(FreplyDTO fReplyDTO);

    default Freply dtoToEntity(FreplyDTO freplyDTO) {
        Freply feply = Freply.builder()
                .rno(freplyDTO.getRno())
                .bno(freplyDTO.getBno())
                .replyer(freplyDTO.getReplyer())
                .reply(freplyDTO.getReply())
                .regDate(freplyDTO.getRegDate())
                .modDate(freplyDTO.getModDate())
                .build();

        return feply;
    }

    default FreplyDTO entityToDTO(Freply freply) {
        FreplyDTO feplyDTO = FreplyDTO.builder()
                .rno(freply.getRno())
                .bno(freply.getBno())
                .replyer(freply.getReplyer())
                .reply(freply.getReply())
                .regDate(freply.getRegDate())
                .modDate(freply.getModDate())
                .build();

        return feplyDTO;
    }

}
