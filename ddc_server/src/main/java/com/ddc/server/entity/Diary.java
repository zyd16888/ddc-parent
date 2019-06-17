package com.ddc.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.*;

import java.io.Serializable;


@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("Diary")
public class Diary extends Model<Diary> {
    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    @TableId("id")
    private String id;
    /**
     * 日志内容
     */
    @TableField("content")
    private String content;



    /**
     * 类型
     */
    @TableField("type")
    private String type;
    /**
     * 用户名
     */
    @TableField("admin")
    private String admin;
    /**
     * 客户端的IP
     */
    @TableField("IP")
    private String IP;
    /**
     * 登录的时间
     */
    @TableField("Time")
    private Long Time;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    public Diary(String id, String content, String type, String admin, String IP) {
        this.id = id;
        this.content = content;
        this.type = type;
        this.admin = admin;
        this.IP = IP;
        this.Time = System.currentTimeMillis();
    }


}
