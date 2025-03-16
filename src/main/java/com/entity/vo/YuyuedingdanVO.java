package com.entity.vo;

import com.entity.YuyuedingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 预约订单
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public class YuyuedingdanVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
