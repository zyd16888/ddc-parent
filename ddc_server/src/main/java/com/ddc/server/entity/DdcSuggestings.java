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
@TableName("ddc_suggestings")
public class DdcSuggestings extends Model<DdcSuggestings> {

    /**
     * 用户主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 用户名
     */
    @TableField("username")
    private String username;

    /**
     * 性别
     */
    private Integer sex;

    /**
     * 手机号
     */
    private String mobile;

    private String email;

    /**
     * 附件地址
     */
    private String path;

    /**
     * 城市ID
     */
    @TableField("city")
    private Integer cityID;

    /**
     * 留言内容
     */
    private String remark;

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

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    public DdcSuggestings(String username, Integer sex, String mobile, String email, String path, Integer cityID, String remark) {
        this.username = username;
        this.sex = sex;
        this.mobile = mobile;
        this.email = email;
        this.path = path;
        this.cityID = cityID;
        this.remark = remark;
        this.createTime = System.currentTimeMillis();
        this.updateTime = System.currentTimeMillis();
        this.createBy=0L;
        this.updateBy=0L;
        this.delFlag = 0;
    }
}
