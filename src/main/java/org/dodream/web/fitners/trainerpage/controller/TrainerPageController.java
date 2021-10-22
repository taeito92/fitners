package org.dodream.web.fitners.trainerpage.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.auction.dto.AuctionDTO;
import org.dodream.web.fitners.common.dto.PageMaker;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.fboard.service.FboardService;
import org.dodream.web.fitners.trainerpage.service.TrainerPageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/trainerpage/*")
@RequiredArgsConstructor
public class TrainerPageController {

    private final TrainerPageService trainerPageService;

@GetMapping("/list")
public void listGet(PageRequestDTO pageRequestDTO, Model model) {
    log.warn("=========================trainerpage list get===================");

    PageResponseDTO<AuctionDTO> pageResponseDTO = trainerPageService.trainerPageGetList(pageRequestDTO);
    List<AuctionDTO> auctionDTOList = pageResponseDTO.getDtoList();
    log.warn(auctionDTOList);

    model.addAttribute("tpdtolist", pageResponseDTO.getDtoList());

    int page = pageRequestDTO.getPage();
    int size = pageRequestDTO.getSize();
    int total = pageResponseDTO.getCount();

    model.addAttribute("pageMaker", new PageMaker(page, size, total));

    log.warn("=======getList success======");
}
}
