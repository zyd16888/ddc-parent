package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.ddc.server.entity.PictureList;
import com.ddc.server.mapper.PictureListMapper;
import com.ddc.server.service.IPictureListService;
import org.springframework.stereotype.Service;

@Service
public class PictureListServiceImpl extends ServiceImpl<PictureListMapper, PictureList> implements IPictureListService {
}
