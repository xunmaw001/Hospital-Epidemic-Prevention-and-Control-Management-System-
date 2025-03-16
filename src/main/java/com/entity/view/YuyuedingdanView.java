package com.entity.view;

import com.entity.YuyuedingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预约订单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
@TableName("yuyuedingdan")
public class YuyuedingdanView  extends YuyuedingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuyuedingdanView(){
	}
 
 	public YuyuedingdanView(YuyuedingdanEntity yuyuedingdanEntity){
 	try {
			BeanUtils.copyProperties(this, yuyuedingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
