package org.dodream.web.fitners.trainerpage.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.trainerpage.service.TrainerPageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/trainerpage/*")
@RequiredArgsConstructor
public class TrainerPageController {

    private final TrainerPageService trainerPageService;

    @GetMapping
    public void biddinglistGet() {
        log.warn("=========================biddinglistGet =======================");
    }
}
