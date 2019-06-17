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

//栏目meta表

public class ColumnMeta extends Model<ColumnMeta> {
    @TableField("column_meta_id")
    private Integer columnMetaId;

    @TableField("column_id")
    private Integer columnId;

    @TableField("meta_key")
    private String columnMetaKey;

    @TableField("meta_value")
    private String columnMetaValue;

    @TableField("create_by_bight")
    private String columnMetaCreator;

    @TableField("create_time")
    private String columnMetaCreateTime;

    @TableField("update_by_bight")
    private String columnMetaUpdater;

    @TableField("update_time")
    private String columnMetaUpdateTime;

    @TableField("delete_flag")
    private Integer columnMetaDeleteFlag;
    @Override
    protected Serializable pkVal() {
        return this.columnMetaId;
    }
}
