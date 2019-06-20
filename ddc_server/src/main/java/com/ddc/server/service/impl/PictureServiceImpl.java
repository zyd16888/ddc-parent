package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.ddc.server.entity.Picture;
import com.ddc.server.mapper.PictureMapper;
import com.ddc.server.service.IPictureService;
import org.springframework.stereotype.Service;

/**
 * @author dong
 * @since 2019-06-18
 */

@Service
public class PictureServiceImpl extends ServiceImpl<PictureMapper, Picture> implements IPictureService {
}
