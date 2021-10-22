package org.dodream.web.fitners.common.dto;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageMaker {

    private int page,start,end,total,size;
    private boolean prev,next;

    public PageMaker(int page, int size, int total) {

        this.page = page;
        this.size = size;
        this.total = total;

        //마지막 페이지
        //수치상 end
        end = (int)(Math.ceil(page / 10.0) * 10);
        //처음 페이지
        start = end - 9;

        prev = start > 1;
        next = total/(double)size > end;

        //진짜 end
        end = end * size > total ? (int)(Math.ceil(total / (double)size)) : end;

    }

}

