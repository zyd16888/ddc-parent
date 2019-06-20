package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import com.ddc.server.entity.member;


import com.ddc.server.mapper.memberMapper;
import com.ddc.server.service.ImemberService;
import org.springframework.stereotype.Service;


@Service
public class memberServiceImpl extends ServiceImpl<memberMapper, member> implements ImemberService {
}




