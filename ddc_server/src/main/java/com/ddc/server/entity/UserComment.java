package com.ddc.server.entity;


import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.*;

import java.io.Serializable;
/**
 * 描述:
 * 意见反馈
 *
 * @author thaddeus
 * @date 2019-06-17 3:35 PM
 */

@Builder
@Getter
@Setter
@NoArgsConstructor
@ToString
@TableName("UserComment")
public class UserComment extends Model<UserComment> {
    private static final long serialVersionUID = 1L;
    /**
     * 评论ID作为 主键，不能为空，自增
     */
    @TableId(value = "ID",type = IdType.AUTO)
    private String ID;

    /**
     * 用户id作为外键
     */
    @TableField("m_id")
    private String m_id;
    /**
     * 评论内容
     */
    @TableField("C_Comments")
    private String C_Comments;
    /**
     * 评论跳转网址
     */
    @TableField("C_Html")
    private String C_Html;

    /**
     * 评论时间
     */
    @TableField("C_Time")
    private String C_Time;


    @Override
    protected Serializable pkVal() {
        return this.ID;
    }

    public UserComment(String ID, String m_id, String c_Comments, String c_Html, String c_Time) {
        this.ID = ID;
        this.m_id = m_id;
        C_Comments = c_Comments;
        C_Html = c_Html;
        C_Time = c_Time;
    }
}
