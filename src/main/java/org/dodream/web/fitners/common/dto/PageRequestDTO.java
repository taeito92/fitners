package org.dodream.web.fitners.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PageRequestDTO {

    @Builder.Default
    private int page = 1;

    @Builder.Default
    private int size = 10;

    private String type;
    private String keyword;

    public int getSkip() {
        return (page - 1) * size;
    }

    public String getType() { //sql if 조건을위해 type이 존재하는지 빈란인지 식별한
        if (type == null || type.trim().length() == 0) { //trim은 공백을 제거하는 메서드
            return null;
        }
        return this.type;
    }

    public String[] getArr() {
        return type == null? new String[]{} : type.split("");
    } //split 기준으로 자르고 문자열로 저장(검색 좀 더 해볼 것)


}
