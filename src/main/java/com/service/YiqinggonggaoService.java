package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YiqinggonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YiqinggonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YiqinggonggaoView;


/**
 * 疫情公告
 *
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public interface YiqinggonggaoService extends IService<YiqinggonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YiqinggonggaoVO> selectListVO(Wrapper<YiqinggonggaoEntity> wrapper);
   	
   	YiqinggonggaoVO selectVO(@Param("ew") Wrapper<YiqinggonggaoEntity> wrapper);
   	
   	List<YiqinggonggaoView> selectListView(Wrapper<YiqinggonggaoEntity> wrapper);
   	
   	YiqinggonggaoView selectView(@Param("ew") Wrapper<YiqinggonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YiqinggonggaoEntity> wrapper);
   	
}

