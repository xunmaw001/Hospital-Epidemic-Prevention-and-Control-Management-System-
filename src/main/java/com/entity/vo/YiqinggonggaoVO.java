package com.entity.vo;

import com.entity.YiqinggonggaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 疫情公告
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public class YiqinggonggaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 公告标题
	 */
	
	private String gonggaobiaoti;
		
	/**
	 * 公告类型
	 */
	
	private String gonggaoleixing;
		
	/**
	 * 公告内容
	 */
	
	private String gonggaoneirong;
		
	/**
	 * 公告状态
	 */
	
	private String gonggaozhuangtai;
		
	/**
	 * 图片
	 */
	
	private String tupian;
				
	
	/**
	 * 设置：公告标题
	 */
	 
	public void setGonggaobiaoti(String gonggaobiaoti) {
		this.gonggaobiaoti = gonggaobiaoti;
	}
	
	/**
	 * 获取：公告标题
	 */
	public String getGonggaobiaoti() {
		return gonggaobiaoti;
	}
				
	
	/**
	 * 设置：公告类型
	 */
	 
	public void setGonggaoleixing(String gonggaoleixing) {
		this.gonggaoleixing = gonggaoleixing;
	}
	
	/**
	 * 获取：公告类型
	 */
	public String getGonggaoleixing() {
		return gonggaoleixing;
	}
				
	
	/**
	 * 设置：公告内容
	 */
	 
	public void setGonggaoneirong(String gonggaoneirong) {
		this.gonggaoneirong = gonggaoneirong;
	}
	
	/**
	 * 获取：公告内容
	 */
	public String getGonggaoneirong() {
		return gonggaoneirong;
	}
				
	
	/**
	 * 设置：公告状态
	 */
	 
	public void setGonggaozhuangtai(String gonggaozhuangtai) {
		this.gonggaozhuangtai = gonggaozhuangtai;
	}
	
	/**
	 * 获取：公告状态
	 */
	public String getGonggaozhuangtai() {
		return gonggaozhuangtai;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
			
}
