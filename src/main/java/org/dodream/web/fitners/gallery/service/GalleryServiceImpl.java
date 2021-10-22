package org.dodream.web.fitners.gallery.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.common.dto.PageRequestDTO;
import org.dodream.web.fitners.common.dto.PageResponseDTO;
import org.dodream.web.fitners.fboard.domain.Fboard;
import org.dodream.web.fitners.fboard.dto.FboardDTO;
import org.dodream.web.fitners.gallery.domain.Gallery;
import org.dodream.web.fitners.gallery.dto.GalleryDTO;
import org.dodream.web.fitners.gallery.mapper.GalleryMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.stream.Collectors;


@Service
@Log4j2
@RequiredArgsConstructor
public class GalleryServiceImpl implements GalleryService{

    private final GalleryMapper galleryMapper;

    @Override
    public Long register(GalleryDTO galleryDTO) {

        Gallery gallery = galleryDTO.getDomain();
        galleryMapper.insert(gallery);
        Long gno = gallery.getGno();

        gallery.getAttachList().forEach(galleryAttach -> {
            galleryAttach.setGno(gno);
            galleryMapper.insertAttach(galleryAttach);

            log.warn(galleryAttach);
        });
        return gallery.getGno();
    }

    @Override
    public PageResponseDTO<GalleryDTO> getDTOList(PageRequestDTO pageRequestDTO) {
        List<GalleryDTO> dtoList = galleryMapper.getList(pageRequestDTO).stream().map(gallery -> gallery.getDTO()).collect(Collectors.toList());
        int count = galleryMapper.getCount(pageRequestDTO);
        PageResponseDTO<GalleryDTO> pageResponseDTO = PageResponseDTO.<GalleryDTO>builder()
                .dtoList(dtoList)
                .count(count)
                .build();

        return pageResponseDTO;
    }

    @Override
    public GalleryDTO read(Long gno) {
        Gallery gallery = galleryMapper.select(gno);
        //조회수증가
        galleryMapper.updateViewCount(gno);

        if (gallery != null) {
            return gallery.getDTO();
        }
        return null;
    }

    @Override
    public boolean modify(GalleryDTO galleryDTO) {

        galleryMapper.deleteAttach(galleryDTO.getGno());

        Gallery gallery = galleryDTO.getDomain();

        Long gno = gallery.getGno();
        gallery.getAttachList().forEach(galleryAttach -> {
            galleryAttach.setGno(gno);
            galleryMapper.insertAttach(galleryAttach);
        });

        return galleryMapper.update(gallery) > 0;
    }

    @Override
    public void remove(GalleryDTO galleryDTO) {
        Gallery gallery = galleryDTO.getDomain();

        galleryMapper.delete(gallery.getGno());
    }

}
