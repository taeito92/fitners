package org.dodream.web.fitners.gallery.domain;

import lombok.*;

@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GalleryAttach {



        private String uuid;
        private Long gno;
        private String fileName;
        private String path;
        private boolean image;


        public void setGno(Long gno) {
            this.gno = gno;
        }
}
