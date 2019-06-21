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
@TableName("Consulting")
public class Consulting extends Model<Consulting> {

    private static final long serialVersionUID = 1L;

    /**
     * 咨询id，主键
     */
    @TableId(value = "C_id",type = IdType.AUTO)
    private Long conId;

    /**
     * 标题，非空
     */
    @TableField("C_title")
    private String conTiele;

    /**
     * 分类
     */
    @TableField("C_class")
    private String conClass;

    /**
     * 来源
     */
    @TableField("C_from")
    private String conFrom;

    /**
     * 更新时间
     */
    @TableField("C_upTime")
    private Long uptime;

    /**
     * 浏览次数
     */
    @TableField("C_seeTimes")
    private Long seeTimes;

    /**
     * 发布状态
     */
    @TableField("C_state")
    private boolean conState;

    /**
     * 咨询内容
     */
    @TableField("C_note")
    private String conNote;

    /**
     * 创建人
     */
    @TableField("C_create_man")
    private Long creatMan;

    /**
     *  创建时间
     */
    @TableField("C_create_time")
    private Long createTime;

    /**
     * 修改人
     */
    @TableField("C_update_man")
    private String updateMan;

    /**
     * 修改时间
     */
    @TableField("C_update_time")
    private Long updateTime;

    /**
     * 删除标志
     */
    @TableField("C_delete_state")
    private Integer delState;


    @Override
    protected Serializable pkVal() {
        return this.conId;
    }

    public Consulting(String conTiele, String conClass, String conFrom, boolean conState, String conNote) {
        this.conTiele = conTiele;
        this.conClass = conClass;
        this.conFrom = conFrom;
        this.uptime = System.currentTimeMillis();
        this.seeTimes = System.currentTimeMillis();
        this.conState = conState;
        this.conNote = conNote;
        this.creatMan = 0L;
        this.createTime = 0L;
        this.delState = 0;
    }
}
