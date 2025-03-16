package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YuyuedingdanDao;
import com.entity.YuyuedingdanEntity;
import com.service.YuyuedingdanService;
import com.entity.vo.YuyuedingdanVO;
import com.entity.view.YuyuedingdanView;

@Service("yuyuedingdanService")
public class YuyuedingdanServiceImpl extends ServiceImpl<YuyuedingdanDao, YuyuedingdanEntity> implements YuyuedingdanService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuyuedingdanEntity> page = this.selectPage(
                new Query<YuyuedingdanEntity>(params).getPage(),
                new EntityWrapper<YuyuedingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuyuedingdanEntity> wrapper) {
		  Page<YuyuedingdanView> page =new Query<YuyuedingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuyuedingdanVO> selectListVO(Wrapper<YuyuedingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuyuedingdanVO selectVO(Wrapper<YuyuedingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuyuedingdanView> selectListView(Wrapper<YuyuedingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuyuedingdanView selectView(Wrapper<YuyuedingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
