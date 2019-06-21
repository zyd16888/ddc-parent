package com.ddc.server.service;

import com.baomidou.mybatisplus.service.IService;
import com.ddc.server.entity.Passage;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author wby
 */


public interface IPassageService extends IService<Passage> {
//    @Select("select * from passage")
//    default List<Passage> selectAll() {
//        return null;
//    }
//
//    @Select("select name from passage")
//    default List<Passage> getName() {
//        return null;
//    }
}

