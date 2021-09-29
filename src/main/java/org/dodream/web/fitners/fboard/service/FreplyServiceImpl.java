package org.dodream.web.fitners.fboard.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.fboard.domain.Freply;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.fboard.mapper.FreplyMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class FreplyServiceImpl implements FreplyService{

    private final FreplyMapper freplyMapper;

    @Override
    public void addReply(FreplyDTO freplyDTO) {
        freplyMapper.insert(dtoToEntity(freplyDTO));
    }

    @Override
    public List<FreplyDTO> getReplyList(Long bno) {
        List<FreplyDTO> freplyList =
                freplyMapper.getReplyList(bno).stream().map(freply -> entityToDTO(freply)).collect(Collectors.toList());

        return freplyList;
    }

    @Override
    public int remove(Long rno) {
        return freplyMapper.delete(rno);
    }

    @Override
    public int modify(FreplyDTO fReplyDTO) {
        return freplyMapper.update(dtoToEntity(fReplyDTO));
    }

}
