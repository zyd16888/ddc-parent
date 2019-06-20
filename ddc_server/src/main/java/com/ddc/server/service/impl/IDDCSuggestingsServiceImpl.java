package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.ddc.server.entity.DdcSuggestings;
import com.ddc.server.mapper.SuggestingsMapper;
import com.ddc.server.service.IDDCSuggestingsService;
import org.springframework.stereotype.Service;

@Service
public class IDDCSuggestingsServiceImpl extends ServiceImpl<SuggestingsMapper, DdcSuggestings> implements IDDCSuggestingsService {
}
