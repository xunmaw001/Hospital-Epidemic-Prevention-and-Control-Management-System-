package com.entity.view;

import com.entity.FangyibaobeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 防疫报备
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
@TableName("fangyibaobei")
public class FangyibaobeiView  extends FangyibaobeiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FangyibaobeiView(){
	}
 
 	public FangyibaobeiView(FangyibaobeiEntity fangyibaobeiEntity){
 	try {
			BeanUtils.copyProperties(this, fangyibaobeiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
