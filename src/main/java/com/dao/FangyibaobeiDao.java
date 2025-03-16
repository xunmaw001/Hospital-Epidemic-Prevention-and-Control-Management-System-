package com.dao;

import com.entity.FangyibaobeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FangyibaobeiVO;
import com.entity.view.FangyibaobeiView;


/**
 * 防疫报备
 * 
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public interface FangyibaobeiDao extends BaseMapper<FangyibaobeiEntity> {
	
	List<FangyibaobeiVO> selectListVO(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
	
	FangyibaobeiVO selectVO(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
	
	List<FangyibaobeiView> selectListView(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);

	List<FangyibaobeiView> selectListView(Pagination page,@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
	
	FangyibaobeiView selectView(@Param("ew") Wrapper<FangyibaobeiEntity> wrapper);
	
}
