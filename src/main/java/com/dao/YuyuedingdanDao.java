package com.dao;

import com.entity.YuyuedingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuyuedingdanVO;
import com.entity.view.YuyuedingdanView;


/**
 * 预约订单
 * 
 * @author 
 * @email 
 * @date 2021-03-13 17:05:14
 */
public interface YuyuedingdanDao extends BaseMapper<YuyuedingdanEntity> {
	
	List<YuyuedingdanVO> selectListVO(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
	
	YuyuedingdanVO selectVO(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
	
	List<YuyuedingdanView> selectListView(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);

	List<YuyuedingdanView> selectListView(Pagination page,@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
	
	YuyuedingdanView selectView(@Param("ew") Wrapper<YuyuedingdanEntity> wrapper);
	
}
