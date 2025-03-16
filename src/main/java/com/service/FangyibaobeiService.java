package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FangyibaobeiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FangyibaobeiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FangyibaobeiView;


/**
 * 防疫报备
 *
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public interface FangyibaobeiService extends IService<FangyibaobeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FangyibaobeiVO> selectListVO(Wrapper<FangyibaobeiEntity> wrapper);
   	
   	FangyibaobeiVO selectVO(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
   	
   	List<FangyibaobeiView> selectListView(Wrapper<FangyibaobeiEntity> wrapper);
   	
   	FangyibaobeiView selectView(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FangyibaobeiEntity> wrapper);
   	
}

