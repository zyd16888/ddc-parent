package com.ddc.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.*;

import java.io.Serializable;

/**
 * zyd
 * 图片列表类
 */

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("pictureList")
public class pictureList  extends Model<pictureList> {

    @TableId(value = "PL_id", type = IdType.AUTO)
    private String id;

    @TableField("P_id")
    private String pid;

    @TableField("PL_note")
    private String note;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    public pictureList(String id, String note) {
        this.id = id;
        this.note = note;
    }
}
