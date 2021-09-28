package org.dodream.web.fitners.fboard.service;

import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface FboardService {

    Long register(FboardDTO fboardDTO);

    PageResponseDTO<FboardDTO> getList(PageRequestDTO pageRequestDTO);

    FboardDTO read(Long bno);

    boolean modify(FboardDTO fboardDTO);

    void remove(FboardDTO fboardDTO);


}
