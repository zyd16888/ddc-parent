package com.ddc.server.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.ddc.server.entity.DDCAuth;
import com.ddc.server.entity.DDCRoleAuth;
import com.ddc.server.entity.Passage;
import com.ddc.server.mapper.DDCAuthMapper;
import com.ddc.server.mapper.DDCRoleAuthMapper;
import com.ddc.server.mapper.PassageMapper;
import com.ddc.server.service.IPassageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;



@Service
public class PassageServiceImpl extends ServiceImpl<PassageMapper, Passage> implements IPassageService {
    /*@Resource
    private PassageMapper passageMapper;
    private Object PassageMapper;

    @Override
    public List<Passage> selectTitle(String title) {
        List<Passage> passageList = PassageMapper;
        List<DDCAuth> auths = new ArrayList<>(10);
        for (DDCRoleAuth roleAuth : roleAuths) {
            auths.add(authMapper.selectById(roleAuth.getAuthId()));
        }
        return auths;
    }*/

}
