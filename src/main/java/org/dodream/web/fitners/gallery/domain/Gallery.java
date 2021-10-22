package org.dodream.web.fitners.gallery.domain;


import lombok.*;
import org.dodream.web.fitners.common.dto.UploadResponseDTO;
import org.dodream.web.fitners.fboard.domain.FboardAttach;
import org.dodream.web.fitners.gallery.dto.GalleryDTO;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Gallery {

    private Long gno;
    private String title;
    private String content;
    private String writer;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
    private int viewCount;

    @Builder.Default
    private List<GalleryAttach> attachList = new ArrayList<>();

    public GalleryDTO getDTO(){
        GalleryDTO galleryDTO = GalleryDTO.builder()
                .gno(gno)
                .title(title)
                .content(content)
                .writer(writer)
                .regDate(regDate)
                .modDate(modDate)
                .viewCount(viewCount)
                .build();


        List<UploadResponseDTO> uploadResponseDTOList = attachList.stream().map(galleryAttach -> {
            UploadResponseDTO uploadResponseDTO = UploadResponseDTO.builder()
                    .uuid(galleryAttach.getUuid())
                    .fileName(galleryAttach.getFileName())
                    .uploadPath(galleryAttach.getPath())
                    .image(galleryAttach.isImage())
                    .build();
            return uploadResponseDTO;
        }).collect(Collectors.toList());

        //boardDTO에 원래 boardDTO가 가지고 있던 값과 uploadResponseDTO의 값들을 넣어줌
        galleryDTO.setFiles(uploadResponseDTOList);

        return galleryDTO;
    }

    public void setGno(long gno){
        this.gno = gno;
    }
    public void addAttach(GalleryAttach galleryAttach) {
        attachList.add(galleryAttach);
    }

}
