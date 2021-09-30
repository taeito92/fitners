package org.dodream.web.fitners.trainerpage.domain;


import lombok.*;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class TrainerPage {

    private int ano; //경매
    private String mid; //경매
    private String title; //경매
    private int membership;//경매
    private int usemembership; //경매

    private String module;// 경매 카메고리

    private int price;// 비딩
    private int bidno; //비딩
}
