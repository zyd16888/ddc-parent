package com.ddc.server.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ddc.server.config.web.http.ResponseHelper;
import com.ddc.server.config.web.http.ResponseModel;
import com.ddc.server.config.web.http.ResponsePageHelper;
import com.ddc.server.config.web.http.ResponsePageModel;
import com.ddc.server.entity.Consulting;
import com.ddc.server.service.IConsultingService;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zyd
 * @since 2019-06-19
 */

@RequestMapping("/consulting")
@Controller

public class ConsultingController {
    @Resource
    private IConsultingService consultingService;

    @RequestMapping("/list")
    @ResponseBody
    public ResponsePageModel<Consulting> list(@RequestParam(name = "page", required = false, defaultValue = "1")Integer pageNumber,
                                              @RequestParam(name = "limit", required = false, defaultValue = "10") Integer pageSize,
                                              String start, String end, String titleName) throws Exception{
        Wrapper<Consulting> wrapper = new EntityWrapper<>();
        if (!StringUtils.isEmpty(start)){
            wrapper = wrapper.ge("create_time", start);
        }
        if (!StringUtils.isEmpty(end)) {
            wrapper = wrapper.le("create_time", end);
        }
        if (!StringUtils.isEmpty(titleName)) {
            wrapper = wrapper.like("username", titleName);
        }
        ResponsePageModel<Consulting> page = ResponsePageHelper.buildResponseModel(
                consultingService.selectPage(new Page<>(pageNumber, pageSize),
                        wrapper));
        return page;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public ResponseModel<String> delete(@RequestParam String ids) throws Exception {
        String[] arr = ids.split(",");
        List<Long> idArray = new ArrayList<>(5);
        for (int i = 0; i < arr.length; i++) {
            if (!StringUtils.isEmpty(arr[i]) && org.apache.commons.lang3.StringUtils.isNumeric(arr[i])) {
                idArray.add(Long.valueOf(arr[i]));
            }
        }
        if (!CollectionUtils.isEmpty(idArray)) {
            consultingService.deleteBatchIds(idArray);
            return ResponseHelper.buildResponseModel("删除成功");
        } else {
            return new ResponseModel<String>(
                    "删除失败", ResponseModel.FAIL.getCode()
            );

        }
    }

}
