package org.dodream.web.fitners.fboard.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.dto.PageMaker;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.fboard.service.FboardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j2
@RequestMapping("/fboard/*")
@RequiredArgsConstructor
public class FboardController {

    private final FboardService fboardService;

    @GetMapping("/register")
    public void registerGet() {
        log.warn("=========================fboard register get =======================");
    }

    @PostMapping("/register")
    public String registerPost(FboardDTO fboardDTO, RedirectAttributes redirectAttributes) {
        log.warn("=========================fboard register post========================");
        log.warn("fboardDTO = " + fboardDTO);
        log.warn("=======register success======");

        Long bno = fboardService.register(fboardDTO);

        log.warn(bno);
        log.warn("success");

        redirectAttributes.addFlashAttribute("result", bno);

        return "redirect:/fboard/list";
    }

    @GetMapping("/list")
    public void listGet(PageRequestDTO pageRequestDTO, Model model) {
        log.warn("=========================fboard list get===================");

        PageResponseDTO<FboardDTO> pageResponseDTO = fboardService.getList(pageRequestDTO);

        model.addAttribute("dtoList", pageResponseDTO.getDtoList());

        int page = pageRequestDTO.getPage();
        int size = pageRequestDTO.getSize();
        int total = pageResponseDTO.getCount();

        model.addAttribute("pageMaker", new PageMaker(page, size, total));

        log.warn("=======getList success======");
    }

    @GetMapping(value = {"/read", "/modify"})
    public void readGet(FboardDTO fboardDTO, PageRequestDTO pageRequestDTO, Model model) {
        log.warn("=====================fboard read get=============" + fboardDTO.getBno());

        model.addAttribute("boardDTO", fboardService.read(fboardDTO.getBno()));

        log.warn(fboardService.read(fboardDTO.getBno()));
    }

    @PostMapping("/modify")
    public String modifyPost(FboardDTO fboardDTO, PageRequestDTO pageRequestDTO, RedirectAttributes redirectAttributes) {
        log.warn("==================fboard modify post===========");
        fboardService.modify(fboardDTO);

        if(fboardDTO.getFiles().size() > 0) {
            fboardDTO.getFiles().forEach(dto -> log.info(dto));
        }

        log.warn("===============modify success===============");

        if (fboardService.modify(fboardDTO)) {
            log.info("success");
            redirectAttributes.addFlashAttribute("result", "modified");
        }

        redirectAttributes.addAttribute("bno", fboardDTO.getBno()); //flash가 아닌 계속 bno를 가지고 있게함
        redirectAttributes.addAttribute("page", pageRequestDTO.getPage());
        redirectAttributes.addAttribute("size", pageRequestDTO.getSize());

        return "redirect:/fboard/read";
    }

    @PostMapping("/remove")
    public String removePost(FboardDTO fboardDTO) {
        log.warn("====================fbaord remove post===========");
        fboardService.remove(fboardDTO);
        log.warn("===========remove success===========");

        return "redirect:/fboard/list";
    }

}
