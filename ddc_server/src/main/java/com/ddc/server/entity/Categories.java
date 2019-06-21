package com.ddc.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.*;

import java.io.Serializable;

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("categories")

//分类表

public class Categories extends Model<Categories> {
    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer categoryId;

    @TableField("name")
    private String categoryName;

    @TableField("level")
    private Integer categoryLevel;

    @TableField("from")
    private Integer categoryFrom;

    @TableField("append")
    private String categoryAppend;

    @TableField("create_by_bight")
    private String categoryCreator;

    @TableField("create_time")
    private String categoryCreateTime;

    @TableField("update_by_bight")
    private String categoryUpdater;

    @TableField("update_time")
    private String categoryUpdateTime;

    @TableField("delete_flag")
    private Integer categoryDeleteFlag;


    @Override
    protected Serializable pkVal() {
        return this.categoryId;
    }

    public Categories(String name,int level,int from,String append){
        this.categoryName = name;
        this.categoryLevel = level;
        this.categoryFrom = from;
        this.categoryAppend = append;
    }
}
