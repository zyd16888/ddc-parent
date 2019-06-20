package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.service.IService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.ddc.server.entity.DDCFeedback;
import com.ddc.server.mapper.DDCFeedbackMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 描述:
 *
 * @author thaddeus
 * @date 2019-06-20 5:40 PM
 */
@Service
public class DDCFeedbackServiceImpl extends ServiceImpl<DDCFeedbackMapper, DDCFeedback> implements IService<DDCFeedback> {
    @Resource
    private DDCFeedbackMapper feedbackMapper;
}
