package org.dodream.web.fitners.gallery.service;

import org.dodream.web.fitners.fboard.domain.Freply;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.gallery.domain.Greply;
import org.dodream.web.fitners.gallery.dto.GreplyDTO;

import java.util.List;

public interface GreplyService {

    void addReply(GreplyDTO greplyDTO);

    List<GreplyDTO> getReplyList(Long gno);

    int remove(Long rno);

    int modify(GreplyDTO greplyDTO);

    default Greply dtoToEntity(GreplyDTO greplyDTO) {
        Greply greply = Greply.builder()
                .rno(greplyDTO.getRno())
                .gno(greplyDTO.getGno())
                .replyer(greplyDTO.getReplyer())
                .reply(greplyDTO.getReply())
                .regDate(greplyDTO.getRegDate())
                .modDate(greplyDTO.getModDate())
                .build();

        return greply;
    }

    default GreplyDTO entityToDTO(Greply greply) {
        GreplyDTO greplyDTO = GreplyDTO.builder()
                .rno(greply.getRno())
                .gno(greply.getGno())
                .replyer(greply.getReplyer())
                .reply(greply.getReply())
                .regDate(greply.getRegDate())
                .modDate(greply.getModDate())
                .build();

        return greplyDTO;
    }
}
