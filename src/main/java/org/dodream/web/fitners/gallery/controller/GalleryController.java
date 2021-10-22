package org.dodream.web.fitners.gallery.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.dto.PageMaker;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.gallery.dto.GalleryDTO;
import org.dodream.web.fitners.gallery.service.GalleryService;
import org.dodream.web.fitners.gallery.service.GalleryTimeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/gallery/*")
@Log4j2
@RequiredArgsConstructor
public class GalleryController {

    private final GalleryTimeService galleryTimeService;
    private final GalleryService galleryService;

    @GetMapping("/time")
    public void getTime(Model model){
        log.info("=============================gallery time contorller gettime====================");
        model.addAttribute("galleryTime", galleryTimeService.getNow());
    }

    @GetMapping("/register")
    public void registerGet(){

    }

    @PostMapping("/register")
    public String registerPost(GalleryDTO galleryDTO, RedirectAttributes redirectAttributes) {
        log.warn("=========================gallery register post========================");
        log.warn("galleryDTO = " + galleryDTO);
        log.warn("=======register success======");

        Long gno = galleryService.register(galleryDTO);

        log.warn(gno);
        log.warn("success");

        redirectAttributes.addFlashAttribute("result", gno);

        return "redirect:/gallery/list";
    }

    @GetMapping("/list")
    public void getList(PageRequestDTO pageRequestDTO, Model model){
        log.info("c             getList....................." + pageRequestDTO);

        PageResponseDTO<GalleryDTO> responseDTO = galleryService.getDTOList(pageRequestDTO);

        model.addAttribute("dtoList",responseDTO.getDtoList());

        int total = responseDTO.getCount();
        int page = pageRequestDTO.getPage();
        int size = pageRequestDTO.getSize();
        model.addAttribute("pageMaker", new PageMaker(page,size,total));

    }

    @GetMapping(value = {"/read","/modify"})
    public void read(Long gno,PageRequestDTO pageRequestDTO, Model model){ //전달 할 데이터가 필요하면 모델을 써야해
        log.info("c        read" +gno);
        log.info("c          read" + pageRequestDTO);
        model.addAttribute("galleryDTO",galleryService.read(gno));

    }

    @PostMapping("/remove")
    public String remove(GalleryDTO galleryDTO) {
        log.warn("====================fbaord remove post===========");
        galleryService.remove(galleryDTO);
        log.warn("===========remove success===========");

        return "redirect:/gallery/list";
    }

    @PostMapping("/modify")
    public String modify(GalleryDTO galleryDTO, RedirectAttributes redirectAttributes){

        log.info("c          modify: "+galleryDTO);
        if(galleryService.modify(galleryDTO)){
            redirectAttributes.addFlashAttribute("result","modified");
        }
        redirectAttributes.addAttribute("gno",galleryDTO.getGno());
        return "redirect:/gallery/read";
    }


}
