package org.dodream.web.fitners.fboard.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.fboard.mapper.FboardMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class FboardServiceeImpl implements FboardService {

    private final FboardMapper fboardMapper;

    @Override
    public Long register(FboardDTO fboardDTO) {
        Fboard fboard = fboardDTO.getDomain();
        fboardMapper.insertFboard(fboard);
        Long bno = fboard.getBno();

        fboard.getAttachList().forEach(fboardAttach -> {
            fboardAttach.setBno(bno);
            fboardMapper.insertAttach(fboardAttach);

            log.warn(fboardAttach);
        });
        return fboard.getBno();
    }

    @Override
    public PageResponseDTO<FboardDTO> getList(PageRequestDTO pageRequestDTO) {
        List<FboardDTO> fboardDTOList
                = fboardMapper.getFboardList(pageRequestDTO).stream().map(fboard -> fboard.getDTO()).collect(Collectors.toList());
        int count = fboardMapper.getCount(pageRequestDTO);

        PageResponseDTO<FboardDTO> pageResponseDTO = PageResponseDTO.<FboardDTO>builder()
                .dtoList(fboardDTOList)
                .count(count)
                .build();

        return pageResponseDTO;
    }

    @Override
    public FboardDTO read(Long bno) {
        Fboard fboard = fboardMapper.select(bno);

        if (fboard != null) {
            return fboard.getDTO();
        }
        return null;
    }

    @Override
    public boolean modify(FboardDTO fboardDTO) {

        fboardMapper.deleteAttach(fboardDTO.getBno());

        Fboard fboard = fboardDTO.getDomain();

        Long bno = fboard.getBno();
        fboard.getAttachList().forEach(fboardAttach -> {
            fboardAttach.setBno(bno);
            fboardMapper.insertAttach(fboardAttach);
        });

        return fboardMapper.update(fboard) > 0;
    }

    @Override
    public void remove(FboardDTO fboardDTO) {
        Fboard fboard = fboardDTO.getDomain();

        fboardMapper.delete(fboard.getBno());
    }
}
