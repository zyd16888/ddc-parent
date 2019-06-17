package com.ddc.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.*;

import java.io.Serializable;

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("columns")
public class Columns extends Model<Columns> {
    private static final long serialVersionUID = 1L;

    @TableField("id")
    private Integer columnId;

    @TableField("name")
    private String columnName;

    @TableField("level")
    private Integer level;

    @TableField("from")
    private Integer columnFrom;

    @TableField("create_by_bight")
    private String columnCreator;

    @TableField("create_time")
    private String columnCreateTime;

    @TableField("update_by_bight")
    private String columnUpdater;

    @TableField("update_time")
    private String columnUpdateTime;

    @TableField("delete_flag")
    private Integer columnDeleteFlag;

    @Override
    protected Serializable pkVal() {
        return this.columnId;
    }
}
