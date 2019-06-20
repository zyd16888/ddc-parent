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
@TableName("member")

public class member extends Model<member> {
    private static final long serialVersionUID =1L;

    /**会员1d;主键**/
    @TableId(value = "m_id",type = IdType.AUTO)
    private String memID;

    /**用户名**/
    @TableField(value = "m_username")
    private  String memusername;

    /**性别**/
    @TableField(value = "m_sex")
    private String memsex;

    /**手机**/
    @TableField(value = "m_phone")
    private String memphone;

    /**邮箱**/
    @TableField(value = "m_email")
    private  String mememail;

    /**地址**/
    @TableField(value = "m_location")
    private String memlocation;

    /**创建人**/
    @TableField(value = "create_man")
    private String memcreater;

    /**加入时间**/
    @TableField(value = "m_data")
    private Long  memdata;

    /**修改人**/
    @TableField(value = "update_man")
    private  String memupdate_man;

    /**修改时间**/
    @TableField(value = "update_time")
    private Long memupdate_time;

    /**状态**/
    @TableField(value = "m_statu")
    private String memstatu;

    /**
     * 删除标志
     */
    @TableField("delete_state")
    private Integer memdelState;

    @Override
    protected Serializable pkVal(){return  this.memID;}

    public member(String memID, String memcreater,String mememail,String memlocation,String memphone,String memsex,String memupdate_man,String memstatu,String memusername) {
        this.memID = memID;
        this.memcreater = memcreater;
        this.mememail=mememail;
        this.memlocation=memlocation;
        this.memphone=memphone;
        this.memsex=memsex;
        this.memupdate_man=memupdate_man;
        this.memstatu=memstatu;
        this.memusername=memusername;

    }
}
