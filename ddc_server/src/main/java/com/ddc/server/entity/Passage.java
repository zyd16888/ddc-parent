package com.ddc.server.entity;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.*;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * <p>
 * 管理员
 * </p>
 *
 * @author WBY
 * @since 2019-06-018
 */
@Builder
@Getter
@Setter
//@NoArgsConstructor
@AllArgsConstructor
@ToString
@TableName("passage")
public class Passage extends Model<Passage> {

    private static final long serialVersionUID = 1L;
    /**
     * 图片主键
     */
    @TableId(value = "id" ,type = IdType.AUTO)
    private Long id;
    /**
     * 图片名
     */
    private String title;


    private Integer type;
    /**
     * 图片
     */
    private int paixu;
    /**
     * 图片标记
     */
    private String keyword;
    /**
     * 更新时间
     */
    private String digest;

    private String author;

    private String src;

    private String details;


    @TableField(value = "update_time")
    private String updateTime;


    @TableField("po_status")
    private Integer poStatus;
    /**
     * 状态值（1：启用，2：禁用）
     */
    /**
     * 删除标志
     */







    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    public Passage() {
    }

    public Passage( String title, Integer type, int paixu, String keyword, String digest,String author,String src,String details,Integer poStatus) {

        this.title = title;
        //this.column = column;
        this.type = type;
        this.paixu = paixu;
        this.keyword = keyword;
        this.digest = digest;
        this.author = author;
        this.src = src;
        this.details = details;
        this.poStatus=poStatus;
        SimpleDateFormat sdf=new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss");
        this.updateTime = sdf.format(new Date());

    }


}