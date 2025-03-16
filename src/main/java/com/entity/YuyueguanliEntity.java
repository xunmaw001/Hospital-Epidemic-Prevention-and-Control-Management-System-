package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 预约管理
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
@TableName("yuyueguanli")
public class YuyueguanliEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YuyueguanliEntity() {
		
	}
	
	public YuyueguanliEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 医生名
	 */
					
	private String yishengming;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 工作经历
	 */
					
	private String gongzuojingli;
	
	/**
	 * 文化程度
	 */
					
	private String wenhuachengdu;
	
	/**
	 * 照片
	 */
					
	private String zhaopian;
	
	/**
	 * 挂号费
	 */
					
	private String guahaofei;
	
	/**
	 * 挂号科室
	 */
					
	private String guahaokeshi;
	
	/**
	 * 单号
	 */
					
	private String danhao;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：医生名
	 */
	public void setYishengming(String yishengming) {
		this.yishengming = yishengming;
	}
	/**
	 * 获取：医生名
	 */
	public String getYishengming() {
		return yishengming;
	}
	/**
	 * 设置：性别
	 */
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
	/**
	 * 设置：工作经历
	 */
	public void setGongzuojingli(String gongzuojingli) {
		this.gongzuojingli = gongzuojingli;
	}
	/**
	 * 获取：工作经历
	 */
	public String getGongzuojingli() {
		return gongzuojingli;
	}
	/**
	 * 设置：文化程度
	 */
	public void setWenhuachengdu(String wenhuachengdu) {
		this.wenhuachengdu = wenhuachengdu;
	}
	/**
	 * 获取：文化程度
	 */
	public String getWenhuachengdu() {
		return wenhuachengdu;
	}
	/**
	 * 设置：照片
	 */
	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}
	/**
	 * 获取：照片
	 */
	public String getZhaopian() {
		return zhaopian;
	}
	/**
	 * 设置：挂号费
	 */
	public void setGuahaofei(String guahaofei) {
		this.guahaofei = guahaofei;
	}
	/**
	 * 获取：挂号费
	 */
	public String getGuahaofei() {
		return guahaofei;
	}
	/**
	 * 设置：挂号科室
	 */
	public void setGuahaokeshi(String guahaokeshi) {
		this.guahaokeshi = guahaokeshi;
	}
	/**
	 * 获取：挂号科室
	 */
	public String getGuahaokeshi() {
		return guahaokeshi;
	}
	/**
	 * 设置：单号
	 */
	public void setDanhao(String danhao) {
		this.danhao = danhao;
	}
	/**
	 * 获取：单号
	 */
	public String getDanhao() {
		return danhao;
	}

}
