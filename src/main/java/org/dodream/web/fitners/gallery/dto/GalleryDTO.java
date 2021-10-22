package org.dodream.web.fitners.gallery.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.dodream.web.fitners.common.dto.UploadResponseDTO;
import org.dodream.web.fitners.fboard.domain.FboardAttach;
import org.dodream.web.fitners.gallery.domain.Gallery;
import org.dodream.web.fitners.gallery.domain.GalleryAttach;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GalleryDTO {

    private Long gno;
    private String title;
    private String content;
    private String writer;
    private LocalDateTime regDate;
    private LocalDateTime modDate;
    private int viewCount;

    @Builder.Default
    private List<UploadResponseDTO> files = new ArrayList<>();

    public Gallery getDomain(){

        Gallery gallery = Gallery.builder()
                .gno(gno)
                .title(title)
                .content(content)
                .writer(writer)
                .regDate(regDate)
                .modDate(modDate)
                .viewCount(viewCount)
                .build();

        files.forEach(uploadResponseDTO -> {
            GalleryAttach attach = GalleryAttach.builder()
                    .fileName(uploadResponseDTO.getFileName())
                    .uuid(uploadResponseDTO.getUuid())
                    .path(uploadResponseDTO.getUploadPath())
                    .image(uploadResponseDTO.isImage())
                    .build();

            gallery.addAttach(attach);
        });
        return gallery;
    }
}
