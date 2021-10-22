package org.dodream.web.fitners.gallery.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.fboard.service.FreplyService;
import org.dodream.web.fitners.gallery.dto.GreplyDTO;
import org.dodream.web.fitners.gallery.service.GreplyService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Log4j2
@RestController
@RequestMapping("/greplies")
@RequiredArgsConstructor
public class GreplyController {


    private final GreplyService greplyService;

    @PostMapping("")
    public void addReply(@RequestBody GreplyDTO greplyDTO) {
        log.warn("==============add reply!!==============");
        greplyService.addReply(greplyDTO);
        log.warn("===========success==========");
    }

    @GetMapping("/list/{gno}")
    public List<GreplyDTO> getBoardReplies(@PathVariable(name = "gno") Long gno) {
        log.warn("============getReplyList================");
        return greplyService.getReplyList(gno);
    }

    @DeleteMapping("/{rno}")
    public String remove(@PathVariable(name = "rno") Long rno) {
        log.info("remove reply............");

        log.info("rno: " + rno);

        greplyService.remove(rno);

        return "success";
    }

    @PutMapping("/{rno}")
    public String modify(@PathVariable(name = "rno") Long rno,
                         @RequestBody GreplyDTO greplyDTO) {
        log.info("modify reply................");

        log.info("rno : " + rno);
        log.info("greplyDTO : " + greplyDTO);
        log.info("=====================================");

        greplyService.modify(greplyDTO);

        return "success";
    }
}
