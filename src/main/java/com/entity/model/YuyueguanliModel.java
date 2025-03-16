package com.entity.model;

import com.entity.YuyueguanliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 预约管理
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public class YuyueguanliModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
