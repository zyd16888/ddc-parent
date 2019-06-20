package com.ddc.server.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.*;

import java.util.Date;
import java.util.List;

/**
 * 描述:
 *
 * @author thaddeus
 * @date 2019-06-20 5:37 PM
 */

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("ddc_feedback")
public class DDCFeedback extends Model<DDCFeedback> {
    private static final long serialVersionUID = 1L;

    @Override
    protected Serializable pkVal() {
        return this.uid;
    }

    /**
     * uid
     */
    private Long uid;

    /**
     * username
     */
    private String username;

    /**
     * sex
     */
    private Integer sex=2;

    /**
     * mobile
     */
    private String mobile;

    /**
     * email
     */
    private String email;

    /**
     * city
     */
    private Integer city;

    /**
     * remark
     */
    private String remark;

    /**
     * path
     */
    private String path;

    /**
     * 创建时间
     */
    @TableField("create_time")
    private Long createTime;
    /**
     * 创建人
     */
    @TableField("create_by")
    private Long createBy;
    /**
     * 更新人
     */
    @TableField("update_by")
    private Long updateBy;
    /**
     * 更新时间
     */
    @TableField("update_time")
    private Long updateTime;


    /**
     * 删除标志
     */
    @TableField("del_flag")
    private Integer delFlag;

    public DDCFeedback(String username, Integer sex, String mobile, String email, Integer city, String remark, String path, Long createBy, Long updateBy) {
        this.username = username;
        this.sex = sex;
        this.mobile = mobile;
        this.email = email;
        this.city = city;
        this.remark = remark;
        this.path = path;
        this.createTime = System.currentTimeMillis();
        this.createBy = createBy;
        this.updateBy = updateBy;
        this.updateTime = System.currentTimeMillis();
        this.delFlag=0;
    }
}