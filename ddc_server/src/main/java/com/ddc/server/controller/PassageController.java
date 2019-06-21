package com.ddc.server.controller;

import com.alibaba.druid.util.StringUtils;
//import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
//import com.baomidou.mybatisplus.toolkit.CollectionUtils;
import com.ddc.server.annotation.CurrentUser;
import com.ddc.server.config.web.http.ResponseHelper;
import com.ddc.server.config.web.http.ResponseModel;
import com.ddc.server.config.web.http.ResponsePageHelper;
import com.ddc.server.config.web.http.ResponsePageModel;
import com.ddc.server.entity.DDCAdmin;
import com.ddc.server.entity.Passage;
import com.ddc.server.mapper.PassageMapper;
import com.ddc.server.service.IPassageService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 前端控制器
 *
 * @author dingpengfei
 * @since 2019-05-09
 */

@RestController
@Controller
@RequestMapping("/passage")
public class PassageController {
    @Resource
    public IPassageService Service;
    @Resource
    private PassageMapper passageMapper;
    @RequestMapping("/add")
    public String jumpAdd(Model model) throws Exception {
        return "article-add";
    }
    @RequestMapping("/article-list")
    @ResponseBody
    public ResponseModel<List<Passage>> selectAll(){
        return ResponseHelper.buildResponseModel(Service.selectList(new EntityWrapper<Passage>()));
    }

    @RequestMapping("/list")
    @ResponseBody
    public ResponsePageModel<Passage> list(@RequestParam(name="page",required = false,defaultValue = "1")Integer pageNumber,
                                           @RequestParam(name = "limit",required = false,defaultValue = "10")Integer pageSize,
                                           String logmin, String logmax, String zxname)throws Exception{
        Wrapper<Passage> wrapper = new EntityWrapper<>();
//        if(!StringUtils.isEmpty(articlecolumn)){
//           wrapper = wrapper.like("column",articlecolumn);
//        }
        if (!StringUtils.isEmpty(logmin)) {
            wrapper = wrapper.ge("create_time", logmin);
        }
        if (!StringUtils.isEmpty(logmax)) {
            wrapper = wrapper.le("create_time", logmax);
        }
        if (!StringUtils.isEmpty(zxname)) {
            wrapper = wrapper.like("title", zxname);
        }
        ResponsePageModel<Passage> page = ResponsePageHelper.buildResponseModel(
                Service.selectPage(new Page<>(pageNumber,pageSize),wrapper));
        return page;
    }

    @RequestMapping("/addAction1")
    @ResponseBody
    public void insertBc(HttpServletRequest request, @RequestParam(value = "articletitle",required = false) String title,

                         @RequestParam(value = "articletype",required =false ) Integer type,@RequestParam(value = "articlesort",required =false ) Integer paixu,
                         @RequestParam(value = "keywords",required =false ) String keyword,@RequestParam(value = "abstract1",required =false ) String digest,
                         @RequestParam(value = "content",required =false ) String details,@RequestParam(value = "author",required =false ) String author,
                         @RequestParam(value = "sources",required =false ) String src,
                         HttpSession session, Model model) throws Exception {
        Passage passage=new Passage(title,type,paixu,keyword,digest,author,src,details,1);
        passageMapper.insert(passage);
    }

    @RequestMapping("/addAction2")
    public void insertCg(HttpServletRequest request, @RequestParam(value = "articletitle",required = false) String title,

                         @RequestParam(value = "articletype",required =false ) Integer type,@RequestParam(value = "articlesort",required =false ) Integer paixu,
                         @RequestParam(value = "keywords",required =false ) String keyword,@RequestParam(value = "abstract1",required =false ) String digest,
                         @RequestParam(value = "content",required =false ) String details,@RequestParam(value = "author",required =false ) String author,
                         @RequestParam(value = "sources",required =false ) String src,
                         HttpSession session, Model model) throws Exception {
        Passage passage=new Passage(title,type,paixu,keyword,digest,author,src,details,1);
        passageMapper.insert(passage);
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
            Service.deleteBatchIds(idArray);
            return ResponseHelper.buildResponseModel("删除成功");
        } else {
            return new ResponseModel<String>(
                    "删除失败", ResponseModel.FAIL.getCode()
            );

        }

    }

    @RequestMapping("/updateOrAdd")
    @ResponseBody
    public ResponseModel<String> updateOrAdd(@RequestBody Passage passage,
                                             @CurrentUser DDCAdmin admin) throws Exception {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        passage.setUpdateTime(sdf.format(new Date()));
        Service.insertOrUpdate(passage);
//        if (!CollectionUtils.isEmpty(idArray)) {
//            suggestingsService.deleteBatchIds(idArray);
//            return ResponseHelper.buildResponseModel("删除成功");
//        } else {
//            return new ResponseModel<String>(
//                    "删除失败", ResponseModel.FAIL.getCode()
//            );
//
//        }
        return ResponseHelper.buildResponseModel("操作成功");
    }

}








