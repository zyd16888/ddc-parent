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
@TableName("Picture")
public class Picture extends Model<Picture> {
    private static final long serialVersionUID = 1L;

    /**
     * 图片id，主键
     */
    @TableId(value = "P_id",type = IdType.AUTO)
    private String picID;

    /**
     * 分类
     */
    @TableField("P_class")
    private String picClass;

    /**
     * 封面图片
     */
    @TableField("P_frist")
    private String picFrist;

    /**
     * 图片名称
     */
    @TableField("p_name")
    private String picName;

    /**
     * 标签
     */
    @TableField("P_tags")
    private String picTags;

    /**
     * 更新时间
     */
    @TableField("P_uptime")
    private Long uptime;

    /**
     *发布状态
     */
    @TableField("P_state")
    private boolean picState;

    /**
     * 图片保存
     */
    @TableField("P_picture")
    private String picture;

    /**
     * 创建人
     */
    @TableField("P_create_man")
    private String createMan;

    /**
     * 创建时间
     */
    @TableField("P_create_time")
    private Long createTime;

    /**
     * 修改人
     */
    @TableField("P_update_man")
    private String updateMan;

    /**
     * 修改时间
     */
    @TableField("P_update_time")
    private Long updateTime;

    /**
     * 删除标志
     */
    @TableField("P_delete_state")
    private Integer delState;


    @Override
    protected Serializable pkVal() {
        return this.picID;
    }

    public Picture(String picID, String picClass, String picFrist, String picName, String picTags, boolean picState, String picture) {
        this.picID = picID;
        this.picClass = picClass;
        this.picFrist = picFrist;
        this.picName = picName;
        this.picTags = picTags;
        this.uptime = System.currentTimeMillis();
        this.picState = picState;
        this.picture = picture;
        this.createTime = System.currentTimeMillis();
        this.updateTime = 0L;
        this.delState = 0;
    }
}
