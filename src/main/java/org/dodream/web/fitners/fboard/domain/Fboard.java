package org.dodream.web.fitners.fboard.domain;

import lombok.*;
import org.dodream.web.fitners.common.dto.UploadResponseDTO;
import org.dodream.web.fitners.fboard.dto.FboardDTO;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Fboard {

    private Long bno;
    private String title;
    private String content;
    private String writer;
    private Timestamp regDate;
    private Timestamp modDate;

    @Builder.Default
    private List<FboardAttach> attachList = new ArrayList<>();

    public FboardDTO getDTO() {
        FboardDTO fboardDTO = FboardDTO.builder()
                .bno(bno)
                .title(title)
                .content(content)
                .writer(writer)
                .regDate(regDate)
                .modDate(modDate)
                .build();

        List<UploadResponseDTO> uploadResponseDTOList = attachList.stream().map(boardAttach -> {
            UploadResponseDTO uploadResponseDTO = UploadResponseDTO.builder()
                    .uuid(boardAttach.getUuid())
                    .fileName(boardAttach.getFileName())
                    .uploadPath(boardAttach.getPath())
                    .image(boardAttach.isImage()) //image의 경우 boolean이라 isImage
                    .build();
            return uploadResponseDTO;
        }).collect(Collectors.toList());

        //boardDTO에 원래 boardDTO가 가지고 있던 값과 uploadResponseDTO의 값들을 넣어줌
        fboardDTO.setFiles(uploadResponseDTOList);

        return fboardDTO;
    }

    public void setBno(Long bno) {
        this.bno = bno;
    }
    public void addAttach(FboardAttach fboardAttach) {
        attachList.add(fboardAttach);
    }
}


