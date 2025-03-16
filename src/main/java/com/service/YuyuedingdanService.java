package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuyuedingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuyuedingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuyuedingdanView;


/**
 * 预约订单
 *
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public interface YuyuedingdanService extends IService<YuyuedingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuyuedingdanVO> selectListVO(Wrapper<YuyuedingdanEntity> wrapper);
   	
   	YuyuedingdanVO selectVO(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
   	
   	List<YuyuedingdanView> selectListView(Wrapper<YuyuedingdanEntity> wrapper);
   	
   	YuyuedingdanView selectView(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuyuedingdanEntity> wrapper);
   	
}

