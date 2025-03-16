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
 * 预约订单
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
@TableName("yuyuedingdan")
public class YuyuedingdanEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YuyuedingdanEntity() {
		
	}
	
	public YuyuedingdanEntity(T t) {
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
	 * 预约医生
	 */
					
	private String yuyueyisheng;
	
	/**
	 * 挂号费
	 */
					
	private String guahaofei;
	
	/**
	 * 挂号科室
	 */
					
	private String guahaokeshi;
	
	/**
	 * 挂号时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date guahaoshijian;
	
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
	 * 设置：预约医生
	 */
	public void setYuyueyisheng(String yuyueyisheng) {
		this.yuyueyisheng = yuyueyisheng;
	}
	/**
	 * 获取：预约医生
	 */
	public String getYuyueyisheng() {
		return yuyueyisheng;
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
	 * 设置：挂号时间
	 */
	public void setGuahaoshijian(Date guahaoshijian) {
		this.guahaoshijian = guahaoshijian;
	}
	/**
	 * 获取：挂号时间
	 */
	public Date getGuahaoshijian() {
		return guahaoshijian;
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
