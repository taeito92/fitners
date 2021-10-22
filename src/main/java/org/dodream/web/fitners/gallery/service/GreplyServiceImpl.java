package org.dodream.web.fitners.gallery.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.fboard.mapper.FreplyMapper;
import org.dodream.web.fitners.fboard.service.FreplyService;
import org.dodream.web.fitners.gallery.dto.GreplyDTO;
import org.dodream.web.fitners.gallery.mapper.GreplyMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class GreplyServiceImpl implements GreplyService {

    private final GreplyMapper greplyMapper;

    @Override
    public void addReply(GreplyDTO greplyDTO) {greplyMapper.insert(dtoToEntity(greplyDTO));}

    @Override
    public List<GreplyDTO> getReplyList(Long gno) {
        List<GreplyDTO> greplyDTOList =
                greplyMapper.getReplyList(gno).stream().map(greply -> entityToDTO(greply)).collect(Collectors.toList());

        return greplyDTOList;
    }

    @Override
    public int remove(Long rno) {
        return greplyMapper.delete(rno);
    }

    @Override
    public int modify(GreplyDTO greplyDTO) {
        return greplyMapper.update(dtoToEntity(greplyDTO));
    }

}