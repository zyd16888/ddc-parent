package com.ddc.server.controller;


import com.ddc.server.config.web.http.ResponseHelper;
import com.ddc.server.config.web.http.ResponseModel;
import com.ddc.server.entity.Columns;
import com.ddc.server.mapper.ColumnsMapper;
import com.ddc.server.service.ColumnsService;
import com.ddc.server.service.SpringContextBeanService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@RequestMapping("/column")
@Controller
public class ColumnsController {
    @Resource
    private ColumnsService columnsService;
    @Resource
    private ColumnsMapper columnsMapper;

    @RequestMapping("/list")
    @ResponseBody
    public ResponseModel<List<Columns>> getColumnsList() {
        columnsService = SpringContextBeanService.getBean(ColumnsService.class);
        List<Columns> columnsList = columnsService.listAllColumns();
        return ResponseHelper.buildResponseModel(columnsList);
    }

    @RequestMapping("/insert")
    @ResponseBody
    public void insertColumn(HttpServletRequest req) throws IOException {
        String columnName = req.getParameter("columnName");
        Integer columnType = Integer.valueOf(req.getParameter("columnType"));
        Columns column = new Columns();
        column.setColumnName(columnName);
        column.setColumnType(columnType);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        column.setColumnCreateTime(df.format(new Date()));

        columnsService = SpringContextBeanService.getBean(ColumnsService.class);
        int insertResult = columnsService.insertColumn(column);
    }
    @RequestMapping("/delete")
    @ResponseBody
    public void deleteColumn(HttpServletRequest req){
        Integer id = Integer.valueOf(req.getParameter("id"));
        System.out.println(id);
        Columns column = new Columns();
        column.setColumnId(id);
        System.out.println(id);
        int num = columnsService.deleteColumn(column);
    }

    @RequestMapping("/search")
    @ResponseBody
    public ResponseModel<List<Columns>> search(HttpServletRequest req){
        String keyword = req.getParameter("key");
        System.out.println(keyword);
        List<Columns> columnsList = columnsService.searchColumn(keyword);
        return ResponseHelper.buildResponseModel(columnsList);
    }

    @RequestMapping("/delete_in_batches")
    @ResponseBody
    public void deleteInBatches(HttpServletRequest req,@RequestParam(value="delItems") String delItems){
        String[] strs = delItems.split(",");
        for (int i = 0; i < strs.length; i++) {
            Integer id = Integer.valueOf(strs[i]);
            Columns columns = new Columns();
            columns.setColumnId(id);
            columnsService.deleteColumn(columns);
        }
    }
    @RequestMapping("/edit")
    @ResponseBody
    public void edit(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        String columnName = req.getParameter("columnName");
        Integer columnId = Integer.valueOf(String.valueOf(req.getSession().getAttribute("id")));
        Integer columnType = Integer.valueOf(req.getParameter("columnType"));
        Columns column = new Columns();
        column.setColumnId(columnId);
        column.setColumnName(columnName);
        column.setColumnType(columnType);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        column.setColumnUpdateTime(df.format(new Date()));
        int num = columnsService.updateColumn(column);
    }

}
