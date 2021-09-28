package org.dodream.web.fitners.fboard.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.fboard.dto.FreplyDTO;
import org.dodream.web.fitners.fboard.service.FreplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Log4j2
@RestController
@RequestMapping("/replies")
@RequiredArgsConstructor
public class FreplyController {

    private final FreplyService freplyService;

    @PostMapping("")
    public void addReply(@RequestBody FreplyDTO freplyDTO) {
        log.warn("==============add reply!!==============");
        freplyService.addReply(freplyDTO);
        log.warn("===========success==========");
    }

    @GetMapping("/list/{bno}")
    public List<FreplyDTO> getBoardReplies(@PathVariable(name = "bno") Long bno) {
        log.warn("============getReplyList================");
        return freplyService.getReplyList(bno);
    }

    @DeleteMapping("/{rno}") //특정 rno를 부르면 DeleteMapping이 되도록 uri를 설계
    public String remove(@PathVariable(name="rno") Long rno) { //PathVariable은 경로에 줬던 값을 파라미터로 바로 줄 수 있음.
        log.info("remove reply............");

        log.info("rno: " + rno);

        freplyService.remove(rno);

        return "success";
    }

    @PutMapping("/{rno}")
    public String modify(@PathVariable(name="rno") Long rno,
                         @RequestBody FreplyDTO FreplyDTO) {
        log.info("modify reply................");

        log.info("rno : " + rno );
        log.info("replyDTO : " + FreplyDTO);
        log.info("=====================================");

        freplyService.modify(FreplyDTO);

        return "success";
    }
}
