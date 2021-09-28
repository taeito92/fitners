package org.dodream.web.fitners.fboard.dto;

import lombok.*;
import org.dodream.web.fitners.common.dto.UploadResponseDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.domain.FboardAttach;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FboardDTO {
    private Long bno;
    private String title;
    private String content;
    private String writer;
    private Timestamp regDate;
    private Timestamp modDate;

    @Builder.Default
    private List<UploadResponseDTO> files = new ArrayList<>();

    public Fboard getDomain() {
        Fboard fboard = Fboard.builder()
                .bno(bno)
                .title(title)
                .content(content)
                .writer(writer)
                .regDate(regDate)
                .modDate(modDate)
                .build();

        files.forEach(uploadResponseDTO -> {
            FboardAttach attach = FboardAttach.builder()
                    .fileName(uploadResponseDTO.getFileName())
                    .uuid(uploadResponseDTO.getUuid())
                    .path(uploadResponseDTO.getUploadPath())
                    .image(uploadResponseDTO.isImage())
                    .build();

            fboard.addAttach(attach);
        });

        return fboard;
    }
}
